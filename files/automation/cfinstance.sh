#!/bin/bash

# Creates ColdFusion9 server instances automatically
# You must have rhino (https://developer.mozilla.org/en-US/docs/Rhino) installed on the originating computer to use it.  It should be in your repos. 
#
# Run by manually editing the variables below or using "-i instancename" & "-s servername" (can be repeated as many times as necessary, eg: "-i instance1 -i instance2")
#
# Name of the instances you want to create (space delimited)
#instances="instance1 instance2"

# Hostnames of the servers to create instances on (space delimited)
#servers="server1 server2"

cwd=$(dirname $0)

while getopts "i:p:n" Option
do
  case $Option in
    i|I ) # Instance Name
        instance="$OPTARG"
        ;;
    n|N ) # Init the server
        serverinit="true"
        ;;
    p|P ) #Password
        password="$OPTARG"
        ;;
    * )
        echo "I don't have anything implemented for \"-$Option\".\n"
        ;;
  esac
done
shift $(($OPTIND - 1))

server="127.0.0.1"

# Verify we have rhino installed
if [ "$(which rhino)" == "" ]; then
	echo "Rhino must be installed to run this script. Exiting."
	exit 1
fi

cookiefile="/tmp/curl-cookies-${server}.txt"
curl_cmd="/usr/bin/curl -b $cookiefile -c $cookiefile -H \"HOST: $server\" -s"
cfadmin="http://${server}:8300/CFIDE/administrator"

# We don't want cookie crumbs
rm -f $cookiefile
touch $cookiefile

# Get Salt from Login Page
salt=$(${curl_cmd} "${cfadmin}/" | sed -n 's/.*<input name="salt" type="hidden" value="\(.*\)">.*/\1/p')
[ "$salt" == "" ] && echo "Unable to get a password salt from the login page $cfadmin.  Exiting" && exit 2

# Hash the Password
pass_hash=$(rhino ${cwd}/cfpassgen.js $salt $password)
[ "$pass_hash" == "" ] && echo "Unable to generate a sha1 hash.  Exiting" && exit 2

# Log into the admin page
echo -n "Logging in..."
output=$($curl_cmd --referer "$cfadmin/" -d "cfadminUserId=admin&cfadminPassword=${pass_hash}&requestedURL=%2FCFIDE%2Fadministrator%2Fenter.cfm%3F&salt=${salt}&submit=Login" -L "${cfadmin}/enter.cfm")
if echo $output | grep -q "ColdFusion Administrator (cfusion)"; then
  echo "done."
else
  if echo $output | grep -q "Configuring Server"; then
    echo "done."
  else
    echo "Login Failed witn output $output"
    exit 1
  fi
fi

if [ "$instance" != "" ]; then
  # Loop through the instances we want to create
  cftoken=$($curl_cmd --referer "$cfadmin/" -L "${cfadmin}/entman/index.cfm?&targeted=true" | sed -n 's/.*csrftoken=\(\w*\).*/\1/p' | head -1)
  echo "[step 1 of 4] creating new instance $instance on $server with token $cftoken."
  output=$($curl_cmd -d "csrftoken=$cftoken&serverName=$instance&directory=/opt/jrun4/servers/$instance&archive_location=&addsubmit=Submit" "${cfadmin}/entman/processaddserver.cfm" | egrep --line-buffered --color=never -o -e "\[step.*\." -e "New CF Instance started\!")
  echo $output
  if echo $output | grep -q 'New CF Instance started!'; then
      exit 0
  else
      echo "Failed to create instance $instance."
      exit 1
  fi
  echo
elif [ "$serverinit" == "true" ]; then
  echo "Initting the server"
  output=$($curl_cmd -L "${cfadmin}/index.cfm?configServer=true")
  while echo $output | grep -q 'Configuring Server, please wait'; do
      output=$($curl_cmd -L "${cfadmin}/index.cfm?configServer=true")
      sleep 1
  done
  if echo $output | grep -q 'Click OK to open the ColdFusion Administrator'; then
     echo "Init worked!"
     touch "${cwd}/init.flag"

     # Cleanup after ourselves
     rm -f $cookiefile
     exit 0
  elif echo $output | grep -q 'ColdFusion Administrator (cfusion)'; then
     echo "Init not needed."
     touch "${cwd}/init.flag"
     rm -f $cookiefile
     exit 0
   fi
  echo "Init Failed: $output"

  # Cleanup after ourselves
  rm -f $cookiefile
  exit 1

fi
