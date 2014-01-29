/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Map){
ColdFusion.Map={};
}
var coldFusion_markerObjCache=new Array();
var $MAP=ColdFusion.Map;
$MAP.statusCodeObject={code200:"A directions request could not be successfully parsed. For example, the request may have been rejected if it contained more than the maximum number of waypoints allowed.",code400:"A directions request could not be successfully parsed. For example, the request may have been rejected if it contained more than the maximum number of waypoints allowed.",code500:"A geocoding or directions request could not be successfully processed, yet the exact reason for the failure is not known",code601:"The HTTP query parameter was either missing or had no value. For geocoding requests, this means that an empty address was specified as input. For directions requests, this means that no query was specified in the input",code602:"No corresponding geographic location could be found for the specified address. This may be due to the fact that the address is relatively new, or it may be incorrect",code603:"The geocode for the given address or the route for the given directions query cannot be returned due to legal or contractual reasons",code604:"The GDirections object could not compute directions between the points mentioned in the query. This is usually because there is no route available between the two points, or because we do not have data for routing in that region",code610:"This request was invalid.",code620:"The webpage has gone over the requests limit in too short a period of time."};
ColdFusion.Map._init=function(_1,_2,_3,_4,_5,_6,_7,_8,_9,_a,_b,_c,_d,_e,_f,_10,_11,_12,_13,_14,_15,_16,_17,_18,_19,_1a,_1b,_1c,_1d,_1e,_1f){
var _20=null;
if(navigator.geolocation){
navigator.geolocation.getCurrentPosition(function(_21){
if(_1f<1){
_14=_21.coords.latitude;
_15=_21.coords.longitude;
_13=null;
}
if(_1f!==0){
if(_1f<0){
_1f=_1f*-1;
}
_19[_1f-1].latitude=_21.coords.latitude;
_19[_1f-1].longitude=_21.coords.longitude;
}
_20=ColdFusion.Map.init(_1,_2,_3,_4,_5,_6,_7,_8,_9,_a,_b,_c,_d,_e,_f,_10,_11,_12,_13,_14,_15,_16,_17,_18,_19,_1a,_1b,_1c,_1d,_1e);
},function(_22){
_20=ColdFusion.Map.init(_1,_2,_3,_4,_5,_6,_7,_8,_9,_a,_b,_c,_d,_e,_f,_10,_11,_12,_13,_14,_15,_16,_17,_18,_19,_1a,_1b,_1c,_1d,_1e);
});
}else{
_20=ColdFusion.Map.init(_1,_2,_3,_4,_5,_6,_7,_8,_9,_a,_b,_c,_d,_e,_f,_10,_11,_12,_13,_14,_15,_16,_17,_18,_19,_1a,_1b,_1c,_1d,_1e);
}
return _20;
};
ColdFusion.Map.init=function(_23,_24,_25,_26,_27,_28,_29,_2a,_2b,_2c,_2d,_2e,_2f,_30,_31,_32,_33,_34,_35,_36,_37,_38,_39,_3a,_3b,_3c,_3d,_3e,_3f,_40){
var _41={divName:_23,type:_26,layout:"fit",renderTo:_23,centerAddress:_35,centerLatitude:_36,centerLongitude:_37,markerItems:_3b,onLoad:_3c,onError:_3d,showCenterMarker:_30,showAllMarker:_31,markerColor:_39,markerIcon:_3a,markerBindListener:_3f,initShow:_2a};
if(_25!=null&&typeof (_25)!="undefined"){
_41.width=_25;
}else{
_41.width=400;
}
if(_24!=null&&typeof (_24)!="undefined"){
_41.height=_24;
}else{
_41.height=400;
}
if(_27!=null&&typeof (_27)!="undefined"){
_41.zoomLevel=_27;
}else{
_41.zoomLevel=3;
}
_41.hideBorders=_29;
if(!_29){
if(_28==null||typeof _28==="undefined"||_28.length==0){
_28=" ";
}
_41.title=_28;
_41.collapsible=_2b;
}
if(_39==null&&_3a==null){
_41.markerColor="#00FF00";
}
var _42=new Ext.Panel(_41);
ColdFusion.objectCache[_23]=_41;
_41.mapPanel=_42;
var _43=["enableDragging"];
var swz=false;
if(_2c){
swz=true;
}
if(_2d){
_43.push("enableDoubleClickZoom");
}else{
_43.push("disableDoubleClickZoom");
}
if(_2e){
_43.push("enableContinuousZoom");
}else{
_43.push("disableContinuousZoom");
}
var _45=["NonExistantControl"];
if(_2f){
_45.push("scaleControl");
}
var mtc=false;
var _47="";
if(_33&&_33.toUpperCase()=="BASIC"){
mtc=true;
_47="google.maps.MapTypeControlStyle.HORIZONTAL_BAR";
}else{
if(_33&&_33.toUpperCase()=="ADVANCED"){
mtc="true";
_47=google.maps.MapTypeControlStyle.DROPDOWN_MENU;
}
}
if(_32){
_45.push("overviewMapControl");
}
var zc=false;
var zco="";
if(_34!=null&&_34!="undefined"){
_34=_34.toUpperCase();
switch(_34){
case "SMALL":
zco=google.maps.ZoomControlStyle.SMALL;
zc=true;
break;
case "SMALL3D":
zco=google.maps.ZoomControlStyle.SMALL;
zc=true;
break;
case "LARGE":
zco=google.maps.ZoomControlStyle.LARGE;
zc=true;
break;
case "LARGE3D":
zco=google.maps.ZoomControlStyle.LARGE;
zc=true;
break;
}
}
var _4a=[];
for(i=0;i<_41.markerItems.length;i++){
var _4b=$MAP.parseMarker(_41.markerItems[i],_23);
_4a.push(_4b);
}
if(_38==null||typeof _38==="undefined"){
_38="";
}
var _4c={marker:{title:_38,iscenter:true}};
if(_41.markerColor!=null&&typeof _41.markerColor!="undefined"){
_4c.marker.markercolor=_41.markerColor;
}else{
if(_41.markerIcon!=null&&typeof _41.markerIcon!="undefined"){
_4c.marker.markericon=_41.markerIcon;
}
}
if(_3e===true){
_4c.listeners={click:$MAP.markerOnClickHandler};
if(_40!=null){
_4c.marker.markerwindowcontent=_40;
}else{
_4c.marker.bindcallback=_3f;
}
_4c.marker.name=_23;
}
if(_41.centerAddress!=null&&typeof _41.centerAddress==="string"){
_4c.geoCodeAddr=_41.centerAddress;
_4c.marker.address=_41.centerAddress;
}else{
_4c.lat=_41.centerLatitude;
_4c.lng=_41.centerLongitude;
_4c.marker.address=_41.centerAddress;
}
var _4d=false;
if(_33!=null&&typeof _33=="string"&&_33.toUpperCase()=="ADVANCED"){
_4d=true;
}
var _4e=new Ext.ux.GMapPanel({xtype:"gmappanel",region:"center",zoomLevel:_41.zoomLevel,gmapType:_41.type,mapConfOpts:_43,mapControls:_45,setCenter:_4c,markers:_4a,border:!_41.hideBorders,onLoadhandler:$MAP.onLoadCompleteHandler,onErrorhandler:$MAP.onErrorHandler,name:_41.divName,noCenterMarker:!_30,showAllMarker:_31,advanceMapTypeControl:_4d,initShow:_2a,zc:zc,zco:zco,mtc:mtc,mtco:_47,swz:swz});
_42.add(_4e);
_41.mapPanelObject=_4e;
if(_2a===false){
_42.hide();
}else{
_42.doLayout();
}
ColdFusion.Log.info("map.initialized","widget",[_23]);
return _42;
};
$MAP.addMarker=function(_4f,_50){
var _51=$MAP.getMapPanelObject(_4f);
var _52=$MAP.parseMarker(_50,_4f);
var _53=[];
_53.push(_52);
_51.addMarkers(_53);
ColdFusion.Log.info("map.addmarker.markeradded","widget",[_4f,_53.length]);
};
$MAP.setCenter=function(_54,_55){
var _56=$MAP.getMapPanelObject(_54);
var lat;
var lng;
if(_55.latitude&&_55.longitude){
if(typeof _55.latitude!="number"||typeof _55.longitude!="number"){
ColdFusion.handleError(null,"map.setcenter.latlngnonnumeric","widget",[_54,_55.latitude,_55.longitude],null,null,true);
}else{
lat=_55.latitude;
lng=_55.longitude;
}
var _59=new google.maps.LatLng(lat,lng);
_56.getMap().setCenter(_59,_56.zoomLevel);
}else{
if(_55.address){
if(typeof _55.address!="string"){
ColdFusion.handleError(null,"map.setcenter.addressnotstring","widget",[_54,_55.address],null,null,true);
}else{
_56.geoCodeLookup(_55.address,null,null,true);
}
}else{
ColdFusion.handleError(null,"map.setcenter.invalidcenter","widget",[_54],null,null,true);
}
}
ColdFusion.Log.info("map.setcenter.centerset","widget",[_54]);
};
$MAP.getLatitudeLongitude=function(_5a,_5b){
geocoder=new google.maps.Geocoder();
if(_5b==null||!typeof _5b==="function"){
_5b=$MAP.LatitudeLongitudeHanlder;
}
geocoder.geocode({"address":_5a},_5b);
};
$MAP.addEvent=function(_5c,_5d,_5e,_5f){
if(_5d=="singlerightclick"){
_5d="rightclick";
}
if(_5d=="maptypechanged"){
_5d="maptypeid_changed";
}
var _60=$MAP.getMapPanelObject(_5c);
_60.addEventToMap(_5d,_5e,_5f);
};
$MAP.setZoomLevel=function(_61,_62){
var _63=$MAP.getMapPanelObject(_61);
_63.zoomLevel=_62;
_63.getMap().setZoom(_62);
};
$MAP.getMapObject=function(_64){
var _65=$MAP.getMapPanelObject(_64);
if(_65!=null){
return _65.getMap();
}
};
$MAP.parseMarker=function(_66,_67){
var _68={};
if(_66.latitude&&_66.longitude){
if(typeof _66.latitude!="number"||typeof _66.longitude!="number"){
ColdFusion.handleError(null,"map.marker.latlngnonnumeric","widget",[_66.latitude,_66.longitude],null,null,true);
}else{
_68.lat=_66.latitude;
_68.lng=_66.longitude;
}
}else{
if(_66.address!=null){
if(typeof _66.address!="string"){
ColdFusion.handleError(null,"map.marker.addressnotstring","widget",[_66.address],null,null,true);
}else{
_68.address=_66.address;
}
}
}
var _69={};
if(_66.tip==null){
_69.title="";
}else{
_69.title=_66.tip;
}
if(_66.markercolor!=null&&typeof _66.markercolor!="undefined"){
_69.markercolor=_66.markercolor;
}else{
if(_66.markericon!=null&&typeof _66.markericon!="undefined"){
_69.markericon=_66.markericon;
}
}
if(_66.showmarkerwindow===true||_66.markerwindowcontent!=null){
var _6a=ColdFusion.objectCache[_67];
var _6b;
if(_6a!=null||typeof (_6a)!="undefined"){
_6b=_6a.markerBindListener;
}
if(_6b!=null||_66.markerwindowcontent!=null){
_68.listeners={click:$MAP.markerOnClickHandler};
if(_66.markerwindowcontent!=null){
_69.markerwindowcontent=_66.markerwindowcontent;
}else{
_69.bindcallback=_6b;
}
_69.name=_66.name;
}
}
_68.marker=_69;
return _68;
};
$MAP.onErrorHandler=function(_6c,_6d){
var _6e=ColdFusion.objectCache[_6c];
var _6f=$MAP.statusCodeObject;
var _70=$MAP.retrieveStatueMessage(_6d);
var _71=_6e.onError;
if(_71!=null&&typeof _71==="function"){
_71.call(null,_6d,_70);
}else{
alert("Error: "+_70);
}
ColdFusion.handleError(null,"map.loadMap.error","map",[_6c,_6d,_70],null,null,true);
};
$MAP.onLoadCompleteHandler=function(_72){
var _73=ColdFusion.objectCache[_72];
var _74=_73.onLoad;
if(_74!=null&&typeof _74==="function"){
_74.call();
}
};
$MAP.retrieveStatueMessage=function(_75){
var _76;
switch(_75){
case "ZERO_RESULTS":
_76=$MAP.statusCodeObject.code602;
break;
case "OVER_QUERY_LIMIT":
_76=$MAP.statusCodeObject.code620;
break;
case "REQUEST_DENIED":
_76=$MAP.statusCodeObject.code610;
break;
case "INVALID_REQUEST":
_76=$MAP.statusCodeObject.code610;
break;
}
return _76;
};
var currentopenwindow="";
$MAP.markerOnClickHandler=function(_77){
coldFusion_markerObjCache[this.name]=this.scope.marker;
if(this.bindcallback!=null&&typeof this.bindcallback=="function"){
var _78=this.address;
if(_78==null||typeof _78=="undefined"){
_78="";
}
this.bindcallback.call(null,this.name,_77.latLng.lat(),_77.latLng.lng(),_78);
}else{
if(this.scope.statictext!=null&&typeof this.scope.statictext!="undefined"){
var me=this,infoWindow=new google.maps.InfoWindow({content:this.scope.statictext,position:this.scope.marker.position});
if(currentopenwindow!=""){
currentopenwindow.close();
}
infoWindow.open(this.scope.marker.map);
currentopenwindow=infoWindow;
}
}
};
ColdFusion.Map.loadMarkerWindowInfo=function(_7a,_7b){
var _7c=coldFusion_markerObjCache[_7b._cf_marker_name];
var me=this,infoWindow=new google.maps.InfoWindow({content:_7a,position:_7c.position});
infoWindow.open(_7c.map);
};
ColdFusion.Map.bindOnErrorHandler=function(_7e,_7f){
ColdFusion.handleError(null,"map.markerbind.binderror","widget",[_7e],null,null,true);
};
$MAP.getMapPanelObject=function(_80){
var _81=ColdFusion.objectCache[_80];
if(_81==null||typeof (_81)=="undefined"){
ColdFusion.handleError(null,"map.getmappanelobject.notfound","widget",[_80],null,null,true);
}
return _81.mapPanelObject;
};
$MAP.refresh=function(_82){
var _83=ColdFusion.objectCache[_82];
if(_83==null||typeof (_83)=="undefined"){
ColdFusion.handleError(null,"map.refresh.notfound","widget",[_82],null,null,true);
}
_83.mapPanel.doLayout();
};
$MAP.hide=function(_84){
var _85=ColdFusion.objectCache[_84];
if(_85==null||typeof (_85)=="undefined"){
ColdFusion.handleError(null,"map.hide.notfound","widget",[_84],null,null,true);
}
_85.mapPanel.hide();
};
$MAP.show=function(_86){
var _87=ColdFusion.objectCache[_86];
if(_87==null||typeof (_87)=="undefined"){
ColdFusion.handleError(null,"map.show.notfound","widget",[_86],null,null,true);
}
_87.mapPanel.show();
_87.mapPanel.doLayout();
};
