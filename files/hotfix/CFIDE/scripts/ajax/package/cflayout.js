/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Layout){
ColdFusion.Layout={};
}
var ACCORDION_TITLE_ICON_CSS_TEMPLATE=".{0} { background-image:url({1}); }";
if(!ColdFusion.MapVsAccordion){
ColdFusion.MapVsAccordion={};
}
ColdFusion.Layout.initializeTabLayout=function(id,_89,_8a,_8b,_8c){
Ext.QuickTips.init();
var _8d;
if(_8a){
_8d={renderTo:id,height:_8a};
}else{
_8d={renderTo:id,autoHeight:true};
}
if(_8b&&_8b!="undefined"){
_8d.width=_8b;
}else{
_8d.autoWidth=true;
}
if(_89){
_8d.tabPosition="bottom";
}else{
_8d.enableTabScroll=true;
}
_8d.plain=!_8c;
var _8e=new Ext.TabPanel(_8d);
ColdFusion.objectCache[id]=_8e;
return _8e;
};
ColdFusion.Layout.getTabLayout=function(_8f){
var _90=ColdFusion.objectCache[_8f];
if(!_90||!(_90 instanceof Ext.TabPanel)){
ColdFusion.handleError(null,"layout.gettablayout.notfound","widget",[_8f],null,null,true);
}
return _90;
};
ColdFusion.Layout.onTabActivate=function(tab){
tab._cf_visible=true;
if(tab._cf_dirtyview){
var _92=ColdFusion.bindHandlerCache[tab.contentEl];
if(_92){
_92();
}
tab._cf_dirtyview=false;
}
var el=Ext.get(tab.contentEl);
el.move("left",1);
el.move("right",1);
};
ColdFusion.Layout.onTabDeactivate=function(tab){
tab._cf_visible=false;
if(tab._cf_refreshOnActivate){
tab._cf_dirtyview=true;
}
};
ColdFusion.Layout.onTabClose=function(tab){
tab._cf_visible=false;
};
ColdFusion.Layout.addTab=function(_96,_97,_98,_99,_9a,_9b,_9c,_9d,_9e){
if(_9a!=null&&_9a.length==0){
_9a=null;
}
var _9f=_96.initialConfig.autoHeight;
if(typeof _9f=="undefined"){
_9f=false;
}
var _a0=new Ext.Panel({title:_99,contentEl:_97,_cf_body:_97,id:_98,closable:_9b,tabTip:_9a,autoScroll:_9e,autoShow:true,autoHeight:_9f});
var tab=_96.add(_a0);
if(_9d){
_a0.setDisabled(true);
}
tab._cf_visible=false;
tab._cf_dirtyview=true;
tab._cf_refreshOnActivate=_9c;
tab.addListener("activate",ColdFusion.Layout.onTabActivate);
tab.addListener("deactivate",ColdFusion.Layout.onTabDeactivate);
tab.addListener("close",ColdFusion.Layout.onTabClose);
ColdFusion.objectCache[_98]=tab;
var _a2=tab.height;
if(_a2&&_a2>1){
var _a3=document.getElementById(_97);
_a3.style.height=_a2;
}
};
ColdFusion.Layout.enableTab=function(_a4,_a5){
var _a6=ColdFusion.objectCache[_a4];
var _a7=ColdFusion.objectCache[_a5];
if(_a6&&(_a6 instanceof Ext.TabPanel)&&_a7){
_a7.setDisabled(false);
ColdFusion.Log.info("layout.enabletab.enabled","widget",[_a5,_a4]);
}else{
ColdFusion.handleError(null,"layout.enabletab.notfound","widget",[_a4],null,null,true);
}
};
ColdFusion.Layout.disableTab=function(_a8,_a9){
var _aa=ColdFusion.objectCache[_a8];
var _ab=ColdFusion.objectCache[_a9];
if(_aa&&(_aa instanceof Ext.TabPanel)&&_ab){
_ab.setDisabled(true);
ColdFusion.Log.info("layout.disabletab.disabled","widget",[_a9,_a8]);
}else{
ColdFusion.handleError(null,"layout.disabletab.notfound","widget",[_a8],null,null,true);
}
};
ColdFusion.Layout.selectTab=function(_ac,_ad){
var _ae=ColdFusion.objectCache[_ac];
var tab=ColdFusion.objectCache[_ad];
if(_ae&&(_ae instanceof Ext.TabPanel)&&tab){
_ae.setActiveTab(tab);
ColdFusion.Log.info("layout.selecttab.selected","widget",[_ad,_ac]);
}else{
ColdFusion.handleError(null,"layout.selecttab.notfound","widget",[_ac],null,null,true);
}
};
ColdFusion.Layout.hideTab=function(_b0,_b1){
var _b2=ColdFusion.objectCache[_b0];
if(_b2&&(_b2 instanceof Ext.TabPanel)){
var _b3=ColdFusion.objectCache[_b1];
var _b4=false;
if(_b3){
if(_b2.getActiveTab()&&_b2.getActiveTab().getId()==_b1){
var i;
for(i=0;i<_b2.items.length;i++){
var _b6=_b2.getComponent(i);
if(_b6.hidden==false){
_b4=true;
_b6.show();
break;
}
}
if(_b4==false){
document.getElementById(_b1).style.display="none";
}
}
_b2.hideTabStripItem(_b3);
ColdFusion.Log.info("layout.hidetab.hide","widget",[_b1,_b0]);
}
}else{
ColdFusion.handleError(null,"layout.hidetab.notfound","widget",[_b0],null,null,true);
}
};
ColdFusion.Layout.showTab=function(_b7,_b8){
var _b9=ColdFusion.objectCache[_b7];
var _ba=ColdFusion.objectCache[_b8];
if(_b9&&(_b9 instanceof Ext.TabPanel)&&_ba){
_b9.unhideTabStripItem(_ba);
ColdFusion.Log.info("layout.showtab.show","widget",[_b8,_b7]);
}else{
ColdFusion.handleError(null,"layout.showtab.notfound","widget",[_b7],null,null,true);
}
};
ColdFusion.Layout.disableSourceBind=function(_bb){
var _bc=ColdFusion.objectCache[_bb];
if(_bc==null||_bc=="undefined"){
ColdFusion.handleError(null,"layout.disableSourceBind.notfound","widget",[_bb],null,null,true);
}
_bc._cf_dirtyview=false;
};
ColdFusion.Layout.enableSourceBind=function(_bd){
var _be=ColdFusion.objectCache[_bd];
if(_be==null||_be=="undefined"){
ColdFusion.handleError(null,"layout.enableSourceBind.notfound","widget",[_bd],null,null,true);
}
_be._cf_dirtyview=true;
};
ColdFusion.Layout.createTab=function(_bf,_c0,_c1,_c2,_c3){
var _c4=ColdFusion.objectCache[_bf];
var _c5=_c0;
if(_bf&&typeof (_bf)!="string"){
ColdFusion.handleError(null,"layout.createtab.invalidname","widget",null,null,null,true);
return;
}
if(!_bf||ColdFusion.trim(_bf)==""){
ColdFusion.handleError(null,"layout.createtab.emptyname","widget",null,null,null,true);
return;
}
if(_c0&&typeof (_c0)!="string"){
ColdFusion.handleError(null,"layout.createtab.invalidareaname","widget",null,null,null,true);
return;
}
if(!_c0||ColdFusion.trim(_c0)==""){
ColdFusion.handleError(null,"layout.createtab.emptyareaname","widget",null,null,null,true);
return;
}
if(_c1&&typeof (_c1)!="string"){
ColdFusion.handleError(null,"layout.createtab.invalidtitle","widget",null,null,null,true);
return;
}
if(!_c1||ColdFusion.trim(_c1)==""){
ColdFusion.handleError(null,"layout.createtab.emptytitle","widget",null,null,null,true);
return;
}
if(_c2&&typeof (_c2)!="string"){
ColdFusion.handleError(null,"layout.createtab.invalidurl","widget",null,null,null,true);
return;
}
if(!_c2||ColdFusion.trim(_c2)==""){
ColdFusion.handleError(null,"layout.createtab.emptyurl","widget",null,null,null,true);
return;
}
_c0="cf_layoutarea"+_c0;
if(_c4&&(_c4 instanceof Ext.TabPanel)){
var _c6=null;
var ele=document.getElementById(_c0);
if(ele!=null){
ColdFusion.handleError(null,"layout.createtab.duplicateel","widget",[_c0],null,null,true);
return;
}
var _c8=false;
var _c9=false;
var _ca=false;
var _cb=false;
var _cc=false;
var _cd=null;
if((_c4.items.length<=0)){
_ca=true;
}
if(_c3!=null){
if(typeof (_c3)!="object"){
ColdFusion.handleError(null,"layout.createtab.invalidconfig","widget",null,null,null,true);
return;
}
if(typeof (_c3.closable)!="undefined"&&_c3.closable==true){
_c8=true;
}
if(typeof (_c3.disabled)!="undefined"&&_c3.disabled==true){
_c9=true;
}
if(typeof (_c3.selected)!="undefined"&&_c3.selected==true){
_ca=true;
}
if(typeof (_c3.inithide)!="undefined"&&_c3.inithide==true){
_cb=true;
}
if(typeof (_c3.tabtip)!="undefined"&&_c3.tabtip!=null){
_cd=_c3.tabtip;
}
}
var _ce=document.getElementById(_bf);
if(_ce){
var _cf=document.getElementById(_bf);
var _d0=document.createElement("div");
_d0.id=_c0;
_d0.className="ytab";
if(_c3!=null&&typeof (_c3.align)!="undefined"){
_d0.align=_c3.align;
}
var _d1="";
if(_c4.tabheight){
_d1="height:"+_c4.tabheight+";";
}
if(_c3!=null&&typeof (_c3.style)!="undefined"){
var _d2=new String(_c3.style);
_d2=_d2.toLowerCase();
_d1=_d1+_d2;
}
if(_c3!=null&&typeof (_c3.overflow)!="undefined"){
var _d3=new String(_c3.overflow);
_d3=_d3.toLowerCase();
if(_d3!="visible"&&_d3!="auto"&&_d3!="scroll"&&_d3!="hidden"){
ColdFusion.handleError(null,"layout.createtab.invalidoverflow","widget",null,null,null,true);
return;
}
if(_d3.toLocaleLowerCase()==="hidden"){
_cc=false;
}
_d1=_d1+"overflow:"+_d3+";";
}else{
_d1=_d1+"; overflow:auto;";
}
_d0.style.cssText=_d1;
_cf.appendChild(_d0);
}
ColdFusion.Layout.addTab(_c4,_c0,_c5,_c1,_cd,_c8,false,_c9,_cc);
ColdFusion.Log.info("layout.createtab.success","http",[_c0,_bf]);
if(_ca==true){
ColdFusion.Layout.selectTab(_bf,_c5);
}
if(_cb==true){
ColdFusion.Layout.hideTab(_bf,_c5);
}
if(_c2!=null&&typeof (_c2)!="undefined"&&_c2!=""){
if(_c2.indexOf("?")!=-1){
_c2=_c2+"&";
}else{
_c2=_c2+"?";
}
var _d4;
var _d5;
if(_c3){
_d4=_c3.callbackHandler;
_d5=_c3.errorHandler;
}
ColdFusion.Ajax.replaceHTML(_c0,_c2,"GET",null,_d4,_d5);
}
}else{
ColdFusion.handleError(null,"layout.createtab.notfound","widget",[_bf],null,null,true);
}
};
ColdFusion.Layout.getBorderLayout=function(_d6){
var _d7=ColdFusion.objectCache[_d6];
if(!_d7){
ColdFusion.handleError(null,"layout.getborderlayout.notfound","widget",[_d6],null,null,true);
}
return _d7;
};
ColdFusion.Layout.showArea=function(_d8,_d9){
var _da=ColdFusion.Layout.convertPositionToDirection(_d9);
var _db=ColdFusion.objectCache[_d8];
var _dc;
if(_db){
var _dd=_db.items;
for(var i=0;i<_dd.getCount();i++){
var _df=_dd.itemAt(i);
if(_df instanceof Ext.Panel&&_df.region==_da){
_dc=_df;
break;
}
}
if(_dc){
_dc.show();
_dc.expand();
ColdFusion.Log.info("layout.showarea.shown","widget",[_d9,_d8]);
}else{
ColdFusion.handleError(null,"layout.showarea.areanotfound","widget",[_d9],null,null,true);
}
}else{
ColdFusion.handleError(null,"layout.showarea.notfound","widget",[_d8],null,null,true);
}
};
ColdFusion.Layout.hideArea=function(_e0,_e1){
var _e2=ColdFusion.Layout.convertPositionToDirection(_e1);
var _e3=ColdFusion.objectCache[_e0];
var _e4;
if(_e3){
var _e5=_e3.items;
for(var i=0;i<_e5.getCount();i++){
var _e7=_e5.itemAt(i);
if(_e7 instanceof Ext.Panel&&_e7.region==_e2){
_e4=_e7;
break;
}
}
if(_e4){
_e4.hide();
ColdFusion.Log.info("layout.hidearea.hidden","widget",[_e1,_e0]);
}else{
ColdFusion.handleError(null,"layout.hidearea.areanotfound","widget",[_e1],null,null,true);
}
}else{
ColdFusion.handleError(null,"layout.hidearea.notfound","widget",[_e0],null,null,true);
}
};
ColdFusion.Layout.collapseArea=function(_e8,_e9){
var _ea=ColdFusion.Layout.convertPositionToDirection(_e9);
var _eb=ColdFusion.objectCache[_e8];
var _ec;
if(_eb){
var _ed=_eb.items;
for(var i=0;i<_ed.getCount();i++){
var _ef=_ed.itemAt(i);
if(_ef instanceof Ext.Panel&&_ef.region==_ea){
_ec=_ef;
break;
}
}
if(_ec){
_ec.collapse(true);
ColdFusion.Log.info("layout.collpasearea.collapsed","widget",[_e9,_e8]);
}else{
ColdFusion.handleError(null,"layout.collpasearea.areanotfound","widget",[_e9],null,null,true);
}
}else{
ColdFusion.handleError(null,"layout.collpasearea.notfound","widget",[_e9],null,null,true);
}
};
ColdFusion.Layout.expandArea=function(_f0,_f1){
var _f2=ColdFusion.Layout.convertPositionToDirection(_f1);
var _f3=ColdFusion.objectCache[_f0];
var _f4;
if(_f3){
var _f5=_f3.items;
for(var i=0;i<_f5.getCount();i++){
var _f7=_f5.itemAt(i);
if(_f7 instanceof Ext.Panel&&_f7.region==_f2){
_f4=_f7;
break;
}
}
if(_f4){
_f4.expand();
ColdFusion.Log.info("layout.expandarea.expanded","widget",[_f1,_f0]);
}else{
ColdFusion.handleError(null,"layout.expandarea.areanotfound","widget",[_f1],null,null,true);
}
}else{
ColdFusion.handleError(null,"layout.expandarea.notfound","widget",[_f1],null,null,true);
}
};
ColdFusion.Layout.printObject=function(obj){
var str="";
for(key in obj){
str=str+"  "+key+"=";
value=obj[key];
if(typeof (value)==Object){
value=$G.printObject(value);
}
str+=value;
}
return str;
};
ColdFusion.Layout.InitAccordion=function(_fa,_fb,_fc,_fd,_fe,_ff,_100,_101){
var _102=false;
if(_fc.toUpperCase()=="LEFT"){
_102=true;
}
if(_ff==null||typeof (_ff)=="undefined"){
_fe=false;
}
var _103={activeOnTop:_fb,collapseFirst:_102,titleCollapse:_fd,fill:_fe};
var _104={renderTo:_fa,layoutConfig:_103,items:_101,layout:"accordion"};
if(_ff==null||typeof (_ff)=="undefined"){
_104.autoHeight=true;
}else{
_104.height=_ff;
}
if(_100==null||typeof (_100)=="undefined"){
_104.autoWidth=true;
}else{
_104.width=_100;
}
var _105=new Ext.Panel(_104);
ColdFusion.objectCache[_fa]=_105;
ColdFusion.Log.info("layout.accordion.initialized","widget",[_fa]);
return _105;
};
ColdFusion.Layout.InitAccordionChildPanel=function(_106,_107,_108,_109,_10a,_10b,_10c,_10d){
if(_108==null||typeof (_108)==undefined||_108.length==0){
_108="  ";
}
var _10e={contentEl:_106,id:_107,title:_108,collapsible:_109,closable:_10a,animate:true,autoScroll:_10b,_cf_body:_106};
if(_10c&&typeof _10c=="string"){
_10e.iconCls=_10c;
}
var _10f=new Ext.Panel(_10e);
_10f._cf_visible=false;
_10f._cf_dirtyview=true;
_10f._cf_refreshOnActivate=_10d;
_10f.on("expand",ColdFusion.Layout.onAccordionPanelExpand,this);
_10f.on("collapse",ColdFusion.Layout.onAccordionPanelCollapse,this);
_10f.on("hide",ColdFusion.Layout.onAccordionPanelHide,this);
_10f.on("show",ColdFusion.Layout.onAccordionPanelExpand,this);
ColdFusion.objectCache[_107]=_10f;
ColdFusion.Log.info("layout.accordion.childinitialized","widget",[_107]);
return _10f;
};
ColdFusion.Layout.getAccordionLayout=function(_110){
var _111=ColdFusion.objectCache[_110];
if(!_111||!(_111 instanceof Ext.Panel)){
ColdFusion.handleError(null,"layout.getaccordionlayout.notfound","widget",[_110],null,null,true);
}
return _111;
};
ColdFusion.Layout.onAccordionPanelExpand=function(_112){
_112._cf_visible=true;
if(_112._cf_dirtyview){
var _113=ColdFusion.bindHandlerCache[_112.contentEl];
if(_113){
_113();
}
_112._cf_dirtyview=false;
}
var el=Ext.get(_112.contentEl);
el.move("left",1);
el.move("right",1);
var _115=ColdFusion.MapVsAccordion[_112._cf_body];
if(_115!=undefined){
var _116=$MAP.getMapPanelObject(_115);
if(_116!=undefined){
if(_116.initShow===true){
$MAP.show(_115);
}
}
}
};
ColdFusion.Layout.onAccordionPanelCollapse=function(_117){
_117._cf_visible=false;
if(_117._cf_refreshOnActivate){
_117._cf_dirtyview=true;
}
};
ColdFusion.Layout.onAccordionPanelHide=function(_118){
_118._cf_visible=false;
};
ColdFusion.Layout.hideAccordion=function(_119,_11a){
var _11b=ColdFusion.objectCache[_119];
var _11c=ColdFusion.objectCache[_11a];
if(!_11b||!_11b instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.hideaccordion.layoutnotfound","widget",[_119],null,null,true);
}
if(!_11c||!_11c instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.hideaccordion.panelnotfound","widget",[_11a],null,null,true);
}
_11c.hide();
ColdFusion.Log.info("layout.hideaccordion.hidden","widget",[_11a,_119]);
};
ColdFusion.Layout.showAccordion=function(_11d,_11e){
var _11f=ColdFusion.objectCache[_11d];
var _120=ColdFusion.objectCache[_11e];
if(!_11f||!_11f instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.showaccordion.layoutnotfound","widget",[_11d],null,null,true);
}
if(!_120||!_120 instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.showaccordion.panelnotfound","widget",[_11e],null,null,true);
}
_120.show();
ColdFusion.Log.info("layout.showaccordion.shown","widget",[_11e,_11d]);
};
ColdFusion.Layout.expandAccordion=function(_121,_122){
var _123=ColdFusion.objectCache[_121];
var _124=ColdFusion.objectCache[_122];
if(!_123||!_123 instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.expandaccordion.layoutnotfound","widget",[_121],null,null,true);
}
if(!_124||!_124 instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.expandaccordion.panelnotfound","widget",[_122],null,null,true);
}
_124.expand();
ColdFusion.Log.info("layout.expandaccordion.expanded","widget",[_122,_121]);
};
ColdFusion.Layout.selectAccordion=function(_125,_126){
return ColdFusion.Layout.expandAccordion(_125,_126);
};
ColdFusion.Layout.collapseAccordion=function(_127,_128){
var _129=ColdFusion.objectCache[_127];
var _12a=ColdFusion.objectCache[_128];
if(!_129||!_129 instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.collapseaccordion.layoutnotfound","widget",[_127],null,null,true);
}
if(!_12a||!_12a instanceof Ext.Panel){
ColdFusion.handleError(null,"layout.collapseaccordion.panelnotfound","widget",[_128],null,null,true);
}
_12a.collapse();
ColdFusion.Log.info("layout.collapseaccordion.collapsed","widget",[_128,_127]);
};
ColdFusion.Layout.createAccordionPanel=function(_12b,_12c,_12d,url,_12f){
var _130=ColdFusion.objectCache[_12b];
var _131=_12c;
if(_12b&&typeof (_12b)!="string"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidname","widget",[_12b],null,null,true);
return;
}
if(!_12b||ColdFusion.trim(_12b)==""){
ColdFusion.handleError(null,"layout.createaccordionpanel.emptyname","widget",[_12b],null,null,true);
return;
}
if(_12c&&typeof (_12c)!="string"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidaccordionpanelname","widget",[_12c],null,null,true);
return;
}
if(!_12c||ColdFusion.trim(_12c)==""){
ColdFusion.handleError(null,"layout.createaccordionpanel.emptyaccordionpanelname","widget",[_12c],null,null,true);
return;
}
if(_12d&&typeof (_12d)!="string"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidtitle","widget",[_12c],null,null,true);
return;
}
if(!_12d||ColdFusion.trim(_12d)==""){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidtitle","widget",[_12c],null,null,true);
return;
}
if(url&&typeof (url)!="string"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidurl","widget",[_12c],null,null,true);
return;
}
if(!url||ColdFusion.trim(url)==""){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidurl","widget",[_12c],null,null,true);
return;
}
_12c="cf_layoutarea"+_131;
if(_130&&(_130 instanceof Ext.Panel)){
var _132=null;
var ele=document.getElementById(_12c);
if(ele!=null){
ColdFusion.handleError(null,"layout.createaccordionpanel.duplicateel","widget",[_12c],null,null,true);
return;
}
var _134=true;
var _135;
var _136=false;
var _137=null;
if(_12f!=null){
if(typeof (_12f)!="object"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidconfig","widget",[_12c],null,null,true);
return;
}
}
if(_12f&&typeof (_12f.selected)!="undefined"&&_12f.selected==true){
_136=true;
}
if(_12f&&_12f.titleicon){
if(typeof _12f.titleicon!="string"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidtitleicon","widget",[_12c],null,null,true);
return;
}
var _138=String.format(ACCORDION_TITLE_ICON_CSS_TEMPLATE,_12c,_12f.titleicon);
Ext.util.CSS.createStyleSheet(_138,_12c+"_cf_icon");
_137=_12c;
}
var _139=_130.layoutConfig;
var _13a=true;
if(_139&&typeof _139.fill!="undefined"){
_13a=_139.fill;
}
if(_12f!=null&&typeof (_12f.overflow)!="undefined"){
var _135=new String(_12f.overflow);
_135=_135.toLowerCase();
if(_135!="visible"&&_135!="auto"&&_135!="scroll"&&_135!="hidden"){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidoverflow","widget",[_12c],null,null,true);
return;
}
if(!_13a&&(_135=="auto"||_135=="scroll")){
ColdFusion.handleError(null,"layout.createaccordionpanel.invalidoverflowforfillheight","widget",[_12c],null,null,true);
return;
}
if(_135=="hidden"){
_134=false;
}
}else{
_135="auto";
_134=true;
}
var _13b=document.getElementById(_12b);
if(_13b){
var _13c=document.getElementById(_12b);
var _13d=document.createElement("div");
_13d.id=_12c;
if(_12f!=null&&typeof (_12f.align)!="undefined"){
_13d.align=_12f.align;
}
var _13e="";
if(_130.height){
_13e="height:"+_130.height+";";
}
if(_12f!=null&&typeof (_12f.style)!="undefined"){
var _13f=new String(_12f.style);
_13f=_13f.toLowerCase();
_13e=_13e+_13f;
}
_13e=_13e+"overflow:"+_135+";";
_13d.style.cssText=_13e;
_13c.appendChild(_13d);
}
var _140=true;
var _141=true;
itemobj=ColdFusion.Layout.InitAccordionChildPanel(_12c,_131,_12d,_141,_140,_134,_137,false);
_130.add(itemobj);
if(url!=null&&typeof (url)!="undefined"&&url!=""){
if(url.indexOf("?")!=-1){
url=url+"&";
}else{
url=url+"?";
}
var _142;
var _143;
if(_12f){
_142=_12f.callbackHandler;
_143=_12f.errorHandler;
}
ColdFusion.Ajax.replaceHTML(_12c,url,"GET",null,_142,_143);
}
_130.doLayout();
if(_136){
ColdFusion.Layout.expandAccordion(_12b,_131);
}
ColdFusion.Log.info("layout.createaccordionpanel.created","widget",[_12c]);
}else{
ColdFusion.handleError(null,"layout.createaccordionpanel.layoutnotfound","widget",[_12b],null,null,true);
}
};
ColdFusion.Layout.initViewport=function(_144,item){
var _146=new Array();
_146[0]=item;
var _147={items:_146,layout:"fit",name:_144};
var _148=new Ext.Viewport(_147);
return _148;
};
ColdFusion.Layout.convertPositionToDirection=function(_149){
if(_149.toUpperCase()=="LEFT"){
return "west";
}else{
if(_149.toUpperCase()=="RIGHT"){
return "east";
}else{
if(_149.toUpperCase()=="CENTER"){
return "center";
}else{
if(_149.toUpperCase()=="BOTTOM"){
return "south";
}else{
if(_149.toUpperCase()=="TOP"){
return "north";
}
}
}
}
}
};
ColdFusion.Layout.addMapInAccordionMapping=function(_14a,map){
ColdFusion.MapVsAccordion[_14a]=map;
};
