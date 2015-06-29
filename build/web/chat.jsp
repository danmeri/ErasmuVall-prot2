<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <%@page contentType="text/html"%> 
        <%@page pageEncoding="UTF-8"%> 
        <title>ErasmuVall-Chat</title>
        <link rel="stylesheet" href="estilos/css/estilo.css" type="text/css">
        <link rel="stylesheet" href="estilos/css/bootstrap.css" type="text/css">
        <script src="estilos/js/bootstrap.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="estilos/js/menu.js"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="estilos/js/bootstrap.min.js"></script>
        <meta property="fb:admins" content="562601872" />
<script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"eb34e8edc5b624c2b5b533440bef4e8d",petok:"8557c4aeee4ea7ee655aef1bbba16acb3f642643-1431700901-1800",zone:"xat.com",rocket:"0",apps:{}}];CloudFlare.push({"apps":{"ape":"350a3ab6be31477c7a19fe3312416fb2"}});!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=7e13c32551/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>

<title>ErasmusValladolid2015 chat group - Conoce otros Erasmus de Valladolid. Inicia sesión</title>
<LINK REL="SHORTCUT ICON" href="http://xat.com/web_gear/chat/icon.ico">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
<script language="JavaScript"><!--
function jumpScroll() {
   	window.scroll(0,566);
}
function jsGo(str) {
	window.location.href = 'http://xat.com/' + clean(str) +'?p=0&ss=3';
}
function ReopenIm()
{
	ClearMedia();
	divId=document.getElementById('control');
	divId.innerHTML='';
	divId.style.display="none";
	divId = document.getElementById('msgr'); 
	if(divId) 
		divId.style.display="inline";
}

function ClearAll()
{
	ClearControl();
	ClearMedia();
}

function ClearMedia()
{
	divId=document.getElementById('media');
	divId.innerHTML='';
}
function OpenSmilies()
{
	divId=document.getElementById('media');
	divId.innerHTML='<embed src="http://www.xatech.com/web_gear/flash/smilies.swf?b4" quality="high" wmode="transparent" flashvars="cn=832395205" width="425" height="600" name=smilies align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" />';
	ClearControl();
	createCookie("LastApp", 30006, 31);
	return 1;
}
function FlashDbg(s) 
{
	alert ("FlashDbg:"+s);
	return 1;
}

function OpenDoodle()
{
	divId=document.getElementById('media');
	divId.innerHTML='<embed src="http://www.xatech.com/web_gear/flash/doodle.swf?a12" quality="high" bgcolor="#000000" flashvars="cn=832395205" width="425" height="600" name="doodle" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" wmode="transparent" />';
	ClearControl();
	createCookie("LastApp", 10000, 31);
	return 1;
}
function OpenUniverse()
{
	divId=document.getElementById('media');
	divId.innerHTML='<embed src="http://xat.com/web_gear/flash/universe.swf?d0" quality="high bgcolor="#000000" flashvars="id=214154808&l=es" width="425" height="540" name="universe" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" /><div style="background-color:#000000; font-size:10px"><table border="0" width="425"><tr><td>The xat universe shows a live view of the public chat groups on xat. To visit a chat group click on its planet, you can navigate around by clicking on empty space and zoom in and out by clicking on the magnifying glass and moving it up and down. Click <a href="http://xat.com/universe.html?id=214154808">here for more</a>.</td></tr></table></div>';
	ClearControl();
	return 1;
}

function OpenGame(id)
{
	if(id == 30006)
	{
		OpenSmilies();
		return 1;
	}
	if(id == 30010)
	{
		OpenUniverse();
		return 1;
	}
	divId=document.getElementById('media');
	if(id != 20034)
		createCookie("LastApp", id, 31);
	var w = 425;
	if(id&1) w=600;

	divId.innerHTML='<embed src="http://www.xatech.com/web_gear/flash/'+id+'.swf?AA7fg" quality="high" wmode="transparent" flashvars="cn=832395205" width="'+w+'" height="600" name="app" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" />';	
	ClearControl();
	return 1;
}

function OpenAyah(obj)
{
	var divId=document.getElementById('media');
	var e = '<iframe width=400 height=600 src=http://xat.com/web_gear/chat/AreYouaHuman.php?';
	var keys = {type:"type", s:"s", i:"i", k:"k", t:"t", r:"roomid"};
	for (var key in keys) 
		e += key + "=" + parseInt(obj[keys[key]]) + "&";
	e += "</iframe>";
	divId.innerHTML=e;	
	ClearControl();
	return 1;
}

function ClearControl()
{
	divId=document.getElementById('control');
	divId.innerHTML='';
	divId.style.display="none";
	divId = document.getElementById('msgr'); 
	if(divId) 
		divId.style.display="none"; 
	createCookie("LastApp", 0, 1);
}
function SetControl()
{
	ClearControl();
	divId=document.getElementById('control');
	divId.style.display="inline";
	if(divId.innerHTML.length < 10)
		divId.innerHTML='<embed src="http://www.xatech.com/web_gear/flash/media.swf?b44" quality="high" wmode="transparent" flashvars="cn=832395205&id=214154808&md=0" width="425" height="131" name="media" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" />';
}
function OpenMedia(str, nocook) {
	str = clean(str);
	var divId=document.getElementById('media');
	divId.innerHTML='<table bgcolor="#000000" border="0" width="425" height="355"><tr><td style="padding:30px">When Members put a <a href="http://youtube.com" target="_blank">YouTube</a>, <a href="http://veoh.com" target="_blank">Veoh</a>, <a href="http://photobucket.com" target="_blank">Photobucket</a>, <a href="http://vids.myspace.com" target="_blank">MySpace Video</a> or <a href="http://live.yahoo.com" target="_blank">Yahoo Live</a> link in the chat box the video thumbnail will appear on everyones player. Each person can click on the thumbnail to start the video.<BR><BR>To watch videos together, Moderators can press the broadcast button and the video will start on everyones player at the same time.<BR><BR>If you are watching a video and do not want to view broadcasts press the lock (key) button.</td></tr></table>';
	divId=document.getElementById('control');
	var la = 10001;
	if(nocook == 1)
		la = readCookie("LastApp")
	if(str==0)
		SetControl();
	else
	{
		ClearControl();
		divId.innerHTML='<embed src="http://www.xatech.com/web_gear/flash/media.swf?b44" quality="high" wmode="transparent" flashvars="cn=832395205&id=214154808&md='+str+'" width="425" height="131" name="media" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" />';
		divId.style.display="inline";
	}
	createCookie("LastApp", la, 31);
	return 1;
}
function OpenByN(n) {
	if(n == 10001) OpenMedia(0);
	if(n == 10000) OpenDoodle();
	if(n >= 20000) OpenGame(n);
	if(n.charAt(0) == '{')
	{
		var obj = JSON.parse(n);
		OpenAyah(obj);
	}
	return 1;
}
function GetEmbed(vid)
{
	vid = clean(vid);
	embed = '<embed type="application/x-shockwave-flash" allowFullScreen="true" bgcolor="#000000" ';
	
	if(vid.substr(0,2) == "$U")
	{ embed += 'src="http://ustream.tv/flash/live/'+ vid.substr(2) +'" flashvars="autoplay=true&brand=embed"';
	w = 416; h = 340; }
	else if(vid.substr(0,2) == "$L")
	{ embed += 'src="http://cdn.livestream.com/grid/LSPlayer.swf?channel='+ vid.substr(2) +'&amp;color=0xe7e7e7&amp;autoPlay=true&amp;mute=false" width="560" height="340" allowScriptAccess="always" ';
	w = 560; h = 340; }
	else if(vid.substr(0,2) == "$Y")
	{ embed += 'src="http://live.yahoo.com/swf/player/'+ vid.substr(2) +'"';
	w = 412; h = 363; }
	else if(vid.substr(0,2) == "$G")
	{ embed += 'src="http://video.google.com/googleplayer.swf?docId='+ vid.substr(2) +'&hl=en-GB&autoplay=true"'; w = 400; h = 326; }
	else if(vid.substr(0,2) == "$O")
	{ embed += 'src="http://www.mogulus.com/grid/PlayerV2.swf?channel='+ vid.substr(2) +'&externalInterface=false&backgroundColor=0xffffff&color=0x333333&showviewers=false&on=true&initialVolume=10&chatEnabled=false"'; w = 454; h = 389; }
	else if(vid.substr(0,2) == "$M")
	{ embed += 'src="http://lads.myspace.com/videos/vplayer.swf" flashvars="m='+ vid.substr(2) +'&v=2&type=video&a=1"'; w = 430; h = 346; }
	else if(vid.substr(0,2) == "$V")
	{ embed += 'src="http://www.veoh.com/videodetails2.swf?permalinkId='+ vid.substr(2) +'&id=anonymous&player=videodetailsembedded&videoAutoPlay=1"'; w = 450; h = 438; }
	else if(vid.substr(0,2) == "$P")
	{
		vid = vid.substr(2);
		var sp = vid.split(",");
		var w=425, h=355;
		if(sp[2] > 0 && sp[3] > 0)
		{
			w = sp[2];
			h = sp[3];
		}
		url = 'http://'+sp[0]+'.photobucket.com/'+sp[1];
		embed ='<a href="'+url+'" target="_blank"><img src="'+url+'" width="'+w+'" height="'+h+'" border="0"></a>';
		return embed;
	}
	else	
	{ embed += 'src="http://www.youtube.com/v/'+ vid + '&rel=0&color1=0xd6d6d6&color2=0xf0f0f0&border=0&autoplay=1"'; w=425; h=355; }
	embed += ' width="'+w+'" height="'+h+'" />' ;
	
	return embed;
}

function StartMedia(arg) {
	if(arg.substring(0,1) == 'L')
		window.location.href = arg.substring(1);
	else
	{
	if(arg.substring(0,9) == 'xatxatxat') arg = 'L'+arg.substring(9);
	divId=document.getElementById('media');
	divId.innerHTML = GetEmbed(arg);
}
	return 1;
}
function clean(str)
{
	var bad=/[\?\{\}\"<>\&:]/;

	if (bad.test(str))
		return "";
	return str;
}
function createCookie(name,value,days) {
	if (days) {
		var date = new Date();
		date.setTime(date.getTime()+(days*24*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	}
	else var expires = "";
	document.cookie = name+"="+value+expires+"; path=/";
}

function readCookie(name) {
	var nameEQ = name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}

function GoPoll()
{

	if(readCookie("Poll") != 4)
	{
		createCookie("Poll",4,7)
		OpenGame(30002);
		createCookie("LastApp", 0, 1);
	}
	else
	{	
	}

}

function GoLast()
{
	var n;
	DoLang();
	if((n = readCookie("LastApp")))
	{
		OpenByN(n);
	}
	else
		GoPoll();
}

uname='ErasmusValladolid2015';

function DoReplace(id, from, to)
{
	var i = document.getElementById(id).innerHTML;
	i = i.replace(from, to);
	i = i.replace(from, to);
	document.getElementById(id).innerHTML = i;
}
function DoLang()
{
var l = readCookie('lang');
var h = 0;
var t = 0;
switch(l)
{
	case 'es' : h = 'Ayuda'; t = 'Cambio'; break;
	case 'pt' : h = 'Ajuda'; t = 'Troca'; break;
	case 'it' : h = 'Aiuto'; t = 'Baratto'; break;
	case 'tr' : h = 'Yardim'; break;
	case 'fr' : h = 'Aide'; t = 'Commerce'; break;
	case 'sq' : h = 'Ndim'; break;
	case 'ro' : h = 'Ajutor'; t = 'Comert'; break;
	case 'th' : h = 'Chuai'; break;
}
if(h !== 0) { DoReplace('help', 'Help', h); } 
if(t !== 0) { DoReplace('trade', 'Trade', t); }
}	

function getXY( id , X)
{
var i = 0;
while( id != null ) {
if(X)
	i += id.offsetTop;
else
	i += id.offsetLeft;
id = id.offsetParent;
}
return i;
}

function DoGsmilies()
{
	var	divId=document.getElementById('desc');
	//var y = getXY(divId, 1);
	var x = getXY(divId, 0);
	divId=document.getElementById('gsmiles');
	divId.style.visibility="visible";
	//divId.style.top = y+"px";
	divId.style.left = x+"px";
}
//-->
</script>
    </head>
    <body onLoad="javascript:GoLast();" >

        <%@include file="cabecera.jsp"%>
        <div class="wrapper" align="center">
            

            <div class="laterali">
            </div>
            <div class="laterald">
            </div>
            <div class="centro">
                <script>
var adverts=[], adindex, adids=[], adxi=0;
var adx = [
["doodleracead", "http://web.xat.com/games_chat.php"],
["snakeracead", "http://web.xat.com/games_chat.php"],
["matchracead", "http://web.xat.com/games_chat.php"],
["spacewarad", "http://web.xat.com/games_chat.php"]
];

adx = [
["xatAd", "http://xat.com/web_gear/chat/GetPowers.php"]
];



$(document).ready(function() { adinit(); });

function readCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(";");
        for(var i=0;i < ca.length;i++) {
                var c = ca[i];
                while (c.charAt(0)==" ") c = c.substring(1,c.length);
                if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
        }
        return null;
}

function adreadCookie(name) {
	var lang;
	lang = readCookie("lang");
	if(lang.length!=2) lang = readCookie("Language");
	lang = lang.replace(new RegExp( "[^a-z]", "g" ), "");
	if(lang.length!=2) return null;
	return lang;	
}

function adinit()
{
	adindex=0;
	var c = new Date();
	c = parseInt((c.getTime() + 30000) / 60000);
    $.getJSON("http://xat.com/json/adverts.php?c="+c, function(o) { 
	if(o) o = o[adreadCookie("Language")];
	if(o) adverts = scramble(o);
	adx = scramble(adx);
	adnew();
	setInterval(function() { adnew(); }, 60000);
	});
}

function scramble(o)
{
	for(var j, x, i = o.length; i; j = parseInt(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);	
	return o;
}

function GoAd(n) {
	window.location = adx[n][1];
}

function adnew()
{
	var i, s;
	for(i=0; i<adids.length; i++)
	{	
		var j = adindex>>1;
		if((adindex&1)==0 && adverts[j] && adverts[j]["group"])
			s='<a href="http://xat.com/'+adverts[j]["group"]+'"><img border="0" src="http://'+adverts[j]["adimg"]+'" width="728" height="90" /></a>';
		else
		{
			j = adxi % adx.length;
			s='<div onmousedown="GoAd('+j+');"><embed wmode="transparent" src="http://xat.com/images/ads/'+adx[j][0]+'.swf?b9" quality="high" flashvars="" width="728" height="90" align="middle" allowscriptaccess="sameDomain" type="application/x-shockwave-flash" /></div>';
			adxi++;
		}
		$(adids[i]).html(s);
		adindex++;
		if(adindex >= (adverts.length*2)) adindex=parseInt(Math.random() * 2);
	}
}
</script>
<script>
adids.push("#"+"GoAd2_305002563");
</script>
<div id="GoAd2_305002563" align="center" style="width:728;height:90"> 
</div>
<div style="padding-top:24px"></div><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="728" height="486" id="chat" align="middle">
<param name="allowScriptAccess" value="sameDomain" />
<param name="movie" value="http://www.xatech.com/web_gear/chat/chat.swf" />
<param name="quality" value="high" /><param name="bgcolor" value="#000000" />
<param name="FlashVars" value="id=214154808&xc=2336&cn=832395205&gb=AA7fg&gn=ErasmusValladolid2015" />
<embed src="http://www.xatech.com/web_gear/chat/chat.swf" quality="high" bgcolor="#000000" width="728" height="486" name="chat" FlashVars="id=214154808&xc=2336&cn=832395205&gb=AA7fg&gn=ErasmusValladolid2015" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://xat.com/update_flash.shtml" />
</object>
</td><td width="2%">&nbsp;</td></tr>
</table>

<br>

<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-1813155-1";
urchinTracker();
</script>
</TBODY>
</TABLE>
<textarea style="display:none" name="GigMail" id="GigMail">
Click here: http://xat.com/ErasmusValladolid2015 to chat!<BR>
<BR>
Featured chat: http://web.xat.com/chat_groups.html<BR>
Popular chat: http://web.xat.com/popular_chat.html<BR>
Cool stuff for your web site: http://xat.com/web_gear/<BR>
</textarea>
                    
                
            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>
