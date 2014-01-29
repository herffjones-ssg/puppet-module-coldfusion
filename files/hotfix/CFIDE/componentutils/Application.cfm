<cfapplication name="componentutils" scriptprotect="form,url">

<cfsetting showdebugoutput="no">
<cfset factory = createObject( "java", "coldfusion.server.ServiceFactory" )>
<cfset request.security = factory.securityService>
<cfset request.esapiutils = createObject("java", "coldfusion.security.ESAPIUtils")>

<!--- Check if RDS service is enabled. If not, then show error and return.--->
<cfif not request.security.isRdsEnabled()>
	<cfoutput>
		<br> <br>
		Unsupported Operation. Check application log for more details.
		<br> <br>
	</cfoutput>
	<cflog text="To use Component Browser, enable RDS Service using Administrator. Note: RDS is intended for development use only."  type="warning">
	<cfabort>
</cfif>

<cfset authorized = true>

<cftry>
<cfif request.security.RDSSecurityEnabled>
	<cflogin>
		<cfscript>
			authHeader = 'Authorization-MX' ;

			authorized = false ;

			httpReq = GetHTTPRequestData() ;
			// check the DW authorization header
			if ( StructKeyExists( httpReq.headers, authHeader ) ) {

				authString = ListGetAt( httpReq.headers[authHeader], 2, ' ' ) ;
				authString = ToBinary( authString ) ;

				credentials = createObject( "java", "java.lang.String" ) ;
				credentials.init( authString ) ;

				// listLast() bug forces us to do it in this way
				pos = Find( ':', credentials.toString() ) ;
				if ( pos neq 0 )
				{
					// Incase of multiuser RDS, the username will also be sent in the header. Hence, retrieve the user.
					user = RemoveChars(credentials.toString(), pos, credentials.toString().length());
					password = RemoveChars( credentials.toString(), 1, pos ) ;
				}
			}
			// check the form password field
			else if ( IsDefined('form.j_password') )
			{
				password = form.j_password ;
				if (IsDefined('form.rdsUserid'))
				{
					user = form.rdsUserid;
				}
				else
				{
					//if singleRDSpassword enabled, set the password value to user.
					if(request.security.getUseSingleRdsPassword())
					{
						user = request.security.getRootAdminUserId();
					}
				}
			}

			if ( IsDefined('password') )
			{
				if (request.security.getUseSingleRdsPassword())
				{
					authorized = request.security.checkRDSPassword( password ) ;
					if ( not authorized )
					{	// try admin password
						authorized = request.security.checkAdminPassword( password ) ;
					}
				}
				else
				{
					if (IsDefined('user') AND len(trim(user)))
					{
						authorized = request.security.checkRDSUserIdPassword(user, password) AND request.security.canAccessRDS(user);
					} else {
						NullUserIdEntered = true;
					}
				}

				if (not authorized)
				{
					InvalidUserIdOrPasswordEntered = true;
				}

			}
		</cfscript>

		<cfif authorized>
			<cfloginuser roles="RDSUser" name="#user#" password="#password#">
		</cfif>

	</cflogin>
</cfif>
<cfcatch type="any">
	<cfset authorized = false>
</cfcatch>
</cftry>

<cfif not authorized>
	<cfinclude template="login.cfm">
	<cfabort>
</cfif>

