<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>


<%
        Connection conn = null;
        Statement stmt=null;
        ResultSet rs=null;
        try
        {
            Class.forName("org.gjt.mm.mysql.Driver");
            String url="jdbc:mysql://localhost:3306/restaurant_project";
            String user="root";
            String password="";
            conn = DriverManager.getConnection(url,user,password);
            stmt = conn.createStatement();
            rs=stmt.executeQuery("select phone_no,street_no,city,landmark,opening_time,closing_time,cost from restaurant where restaurant_id=103");
            if(rs.next()){
	%>

 
	
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->


<html lang="en">
<head>
<title>SearchPage</title>
<meta charset="utf-8">
<style>
html, body {
	width:100%;
	padding:0;
	margin:0;
}



body {
	font: 14px/18px "Times New Roman", Times, serif;
	color:black;
	min-width:960px;
	background: url("images/bg.gif") center 0 repeat;
}

.bgr {
	background:url("images/bgr.jpg") center 0 no-repeat;
	width:100%;
}

a {
	text-decoration:none;
	cursor:pointer;
	text-decoration:none;
}
a:hover {
	text-decoration:none;
}
#content {
	width:91%;
	margin:0 auto;
	position:relative;
}
.block-3 {
	background:url("images/block-3.png") center 0 no-repeat;
	margin-top:43px;
	overflow:hidden;
	padding-top:0px;
}
h3 {
	font-size:36px;
	line-height:45px;
	color:#131313;
	font-weight:normal;
	font-style:italic;
	text-shadow:#6c6c6c 0px 0px 3px;
}
.h3-line {
	border-bottom:#d6d6d6 1px solid;
	padding-bottom:2px;
}
.h3 {
	text-align:center;
}
.h2{
    font-size:1.2em;
}

.h3-line-2 {
	border-bottom:#d6d6d6 1px solid;
	padding-bottom:2px;
	display:inline-block;
}
.box-3 {
	overflow:hidden;
	padding-top:0px;
	margin:0 40px 0 200px;
}
.box-3>div {
	width:200px;
	float:left;
	text-align:center;
	margin-right:10px;
}
.box-3>div p {
	margin-top:11px;
}
.img-border {
	background:#fff;
	display:inline-block;
	padding:8px;
	border:#d7d7d7 7px solid;
        width:90%;
        height:57%;
        margin-right:17px;
     
          margin-left:49px;
       
}
.border-2 {
	background:url("images/line.jpg") center bottom no-repeat;
	padding-bottom:6px;
	margin-bottom:5px;
}
.it-bold {
	font-style:italic;
	font-weight:bold;
}
.clr-1 {
	color:black;
}
.link {
	color:black;
	text-decoration:none;
	text-decoration:underline;
	font-weight:normal;
}
.link:hover {
	text-decoration:none;
}
header {
	width:950px;
	margin:0px auto;
	padding-top:27px;
	z-index:101;
	position:relative;
}
h1 {
	display:inline-block;
	z-index:100;
	background:url("images/logo-bg.jpg") 0 0 no-repeat;
	width:550px;
	height:100px;
	margin-left:104px;
	padding-left:194px;
}
.back{
     display:block;
     background-image:url("images/apic.png");
     width:100%;
     height:410px;
     border:5px solid black;
}
.wrap{
     display:block;
     margin:auto;
     text-align:left;
     padding-top:55px;
     width:60%;
     font-style:italic;
	font-weight:bold;
}
 
.last{
     display:block;
     margin:20px;
     width:750px;
     color:black;
     font-size:3em;
     text-shadow:0 2px 3px white;
}


.searchwrap{
          display:block;
	    -webkit-border-radius:8px;
	   -moz-border-radius:8px;
	    border-radius:8px;
	    border:2px solid rgba(0,0,0,0,4);
	    width:700px;
	    position:relative;
	    margin:auto;
}
.input{
       font-size:30px;
}
#in{
     font-size:30px;
    -webkit-border-radius:4px;
	-moz-border-radius:4px;
	border-radius:4px;
}
.testbetn{
       position:absolute;
       top:0px;
       right:0px;}
#sub{
     margin:auto;
     width:100px;
}
footer {
	width:950px;
	margin:0 auto;
	position:relative;
	overflow:hidden;
	padding:32px 0 40px 0;
	text-align:center;
	color:#a3a2a2;
	background:url("images/footer-bg.png") center 0 no-repeat;
}
footer p, footer p a.link {
	font-weight:bold;
}
.box-4 {
	overflow:hidden;
	padding-top:8px;
	margin-left:40px;
	margin-right:40px;
}
.box-4>div {
	width:190px;
	float:left;
	text-align:center;
	margin-right:10px;
}
.box-4>div h4 {
	margin-bottom:4px;
}
.box-4>div p {
	margin-top:11px;
}

.block-2 {
	overflow:hidden;
	border:#bebebe 1px solid;
	border-top:none !important;
	background:url(../images/block-2.jpg) 0 bottom no-repeat #fff;
	padding-bottom:62px;
}

.res-main-address-text {
    font-weight: 400;
    line-height: 20px;
    margin: 0;
    padding: 0;
    display: inline;
}

.res-tel {
    font-size: 15pt;
    line-height: 32px;
    margin-bottom: 0;
    letter-spacing: .5px;
}

.left {
    float: left;
}

element.style {
    min-height: 2865px;
}

.pr0 {
    padding-right: 0;
}

@media (min-width: 641px){
.col-m-1, .col-m-10, .col-m-11, .col-m-12, .col-m-13, .col-m-14, .col-m-15, .col-m-16, .col-m-2, .col-m-3, .col-m-4, .col-m-5, .col-m-6, .col-m-7, .col-m-8, .col-m-9 {
    float: left;
}
.col-l-1, .col-l-10, .col-l-11, .col-l-12, .col-l-13, .col-l-14, .col-l-15, .col-l-16, .col-l-2, .col-l-3, .col-l-4, .col-l-5, .col-l-6, .col-l-7, .col-l-8, .col-l-9, .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-13, .col-lg-14, .col-lg-15, .col-lg-16, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-m-1, .col-m-10, .col-m-11, .col-m-12, .col-m-13, .col-m-14, .col-m-15, .col-m-16, .col-m-2, .col-m-3, .col-m-4, .col-m-5, .col-m-6, .col-m-7, .col-m-8, .col-m-9, .col-s-1, .col-s-10, .col-s-11, .col-s-12, .col-s-13, .col-s-14, .col-s-15, .col-s-16, .col-s-2, .col-s-3, .col-s-4, .col-s-5, .col-s-6, .col-s-7, .col-s-8, .col-s-9 {
    position: relative;
    min-height: 1px;
    padding-left: 10px;
    padding-right: 10px;
}

user agent stylesheet
div {
    display: block;
}

*.navbar
{

	float: left;
	margin-left:32px;
	margin-top: 0px;
    padding: 10px;
    width: 20%;
    border: 3px solid black;
	
	
	
}
.bold {
	font-weight:bold;
	background-color:grey;
	border: 2px solid #a1a1a1;
    padding: 1px 4px; 
    
    
    border-radius: 25px;
}
.desc{
font-size:15px;}
.styImg{width:20%;  border-radius: 18px;}



.det {
	
	background-color:white;
	border: 2px solid #a1a1a1;
    padding: 1px 4px; 
    border-radius: 5px;
}


<!--                                      -->

#sliderFrame, #sliderFrame div {
    box-sizing: content-box;
}
#sliderFrame 
{
    width:700px;
    margin:0 auto; /*center-aligned*/
}

#slider, #slider .sliderInner {
    width:700px;height:306px;/* Must be the same size as the slider images */
    border-radius:3px;
}

#slider {
    background-color:white;
    position:relative;
    margin:0 auto; /*center-aligned*/
    transform: translate3d(0,0,0);
    box-shadow: 0px 1px 5px #999999;
}

/* the link style (if an image is wrapped by a link) */
#slider a.imgLink, #slider .video {
    z-index:2;
    cursor:pointer;
    position:absolute;
    top:0px;left:0px;border:0;padding:0;margin:0;
    width:100%;height:100%;
}
#slider .video {
    background:transparent url(video.png) no-repeat 50% 50%;
}

/* Caption styles */
#slider .mc-caption {
    position:absolute;
    width:100%;
    height:auto;
    padding:10px 0;/* 10px will increase the height.*/
    left:0px;
    bottom:0px;top:auto;
    overflow:hidden;
    font: bold 14px/20px Arial;
    color:#EEE;
    text-align:center;
    background:rgba(0,0,0,0.3);
}
#slider .mc-caption a {
    color:#FB0;
}
#slider .mc-caption a:hover {
    color:#DA0;
}


/* ------ built-in navigation bullets wrapper ------*/
#slider .navBulletsWrapper  {
    top:320px;
    text-align:center;
    background:none;
    position:relative;
    z-index:3;
}

/* each bullet */
#slider .navBulletsWrapper div 
{
    width:11px; height:11px;
    font-size:0;color:White;/*hide the index number in the bullet element*/
    background:transparent url(bullet.png) no-repeat 0 0;
    display:inline-block; *display:inline; zoom:1;
    overflow:hidden;cursor:pointer;
    margin:0 6px;/* set distance between each bullet*/
}

#slider .navBulletsWrapper .active {background-position:0 -11px;}


/* --------- Others ------- */

#slider img, #slider>b, #slider a>b {
    position:absolute; border:none; display:none;
}

#slider .sliderInner {
    overflow:hidden;
    position:absolute; top:0; left:0;
}

#slider>a, #slider video, #slider audio {display:none;}
#slider div {-webkit-transform: translate3d(0,0,0);transform: translate3d(0,0,0);}
  




                              -->
</style>

</head>
<body>
    
   
        

<div style="position:absolute;top:100%;left:25%;float:left;background-color:grey;padding:1%;margin:1%;font-size:1.7em"> 
<center><h6>MENUS</h6></center>
<img src="6.jpg" class="styImg"/>
<img src="a.jpg" class="styImg"/>
<img src="y.jpg" class="styImg"/>
<img src="6.jpg" class="styImg"/>
<img src="p.jpg" class="styImg"/>

 


</div>
<div style="position:absolute;top:170%;left:25%;float:left;background-color:grey;padding:1%;margin:1%;font-size:1.7em">
<center><h6>IMAGES</h6></center>
<img src="6.jpg" class="styImg"/>
<img src="a.jpg" class="styImg"/>
<img src="y.jpg" class="styImg"/>

<img src="p.jpg" class="styImg"/>

</div> 



</div>





  <div class="bgr">
    <!--==============================header=================================-->
    <header>
      <h1><a href="index.html"><img src="mlogo1.jpg" alt=""></a></h1>
      
      
    </header>
    <!--==============================content================================-->
   
    <!--<div class="img-border"><center><img src="0.jpeg" alt="" height="90%" width="50%"></center></div>-->
	 <div id="sliderFrame">
        <div id="slider">
            <a href="http://www.menucool.com/javascript-image-slider" target="_blank">
                <img src="uu.jpeg" alt="" />
            </a>
           
           
			 <img src="images/thumb5.jpeg" />
			 <img src="images/thumb4.jpeg" />
			   <img src="images/piyu.jpg" />
            
             <img src="piyu.jpg" alt="#htmlcaption" />
        </div>
        
    </div>

	<script>
	var sliderOptions=
{
	sliderId: "slider",
	startSlide: 0,
	effect: "series1",
	effectRandom: false,
	pauseTime: 2600,
	transitionTime: 500,
	slices: 12,
	boxes: 8,
	hoverPause: 1,
	autoAdvance: true,
	thumbnailsWrapperId: "thumbs",
	m: false,
	license: "mylicense"
};

var imageSlider=new mcImgSlider(sliderOptions);

/* Menucool Javascript Image Slider v2016.4.2. Copyright www.menucool.com */
function mcImgSlider(i){for(var I=function(a){return document.getElementById(a)},d="length",Q="getElementsByTagName",t=function(e){var a=e.childNodes,c=[];if(a)for(var b=0,f=a[d];b<f;b++)a[b].nodeType==1&&c.push(a[b]);return c},g="className",h="getAttribute",y="opacity",U=function(a,b){return a[Q](b)},mb=function(a){for(var c,e,b=a[d];b;c=parseInt(Math.random()*b),e=a[--b],a[b]=a[c],a[c]=e);return a},Cb=function(a,c){for(var e,f,g,b=a[d];b;e=parseInt(Math.random()*b),f=a[--b],a[b]=a[e],a[e]=f,g=c[b],c[b]=c[e],c[e]=g);return[a,c]},Bb=function(a,c,b){if(a.addEventListener)a.addEventListener(c,b,false);else a.attachEvent&&a.attachEvent("on"+c,b)},P=document,J=window.requestAnimationFrame,V=window.cancelAnimationFrame,nb=["ms","webkit"],v="",db=0;db<nb[d]&&!J;++db){v=nb[db];J=window[v+"RequestAnimationFrame"];V=window[v+"CancelAnimationFrame"];v="-"+v+"-"}var yb=function(){var b=U(P,"head");if(b[d]){var a=P.createElement("style");b[0].appendChild(a);return a.sheet?a.sheet:a.styleSheet}else return 0},sb=function(){var a=yb();if(a)if(typeof a.insertRule!="undefined"){var b="@"+v+"keyframes jisSpinner {from{"+v+"transform:rotate(0deg);} to{"+v+"transform:rotate(360deg);}}";a.insertRule(b,0);var c="#"+i.sliderId+" .bgLayer {position:absolute;width:100%;height:100%;}";a.insertRule(c,0);var d="#"+i.sliderId+"::before {"+v+"animation:jisSpinner 0.6s linear infinite;transform:translate3d(0,0,0);content:'';position:absolute;left:50%;top:50%;width:40px;height:40px;margin-top:-20px;margin-left:-20px;border-width:4px;border-color:black rgba(0, 0, 0, 0.8) rgba(255, 255, 255, 0.8) rgba(255, 255, 255, 0.8);border-style:solid;border-radius:50%;}";a.insertRule(d,0)}else a.addRule("#"+i.sliderId+" .bgLayer","position:absolute;width:100%;height:100%;")};sb();var c="style",H="display",Eb="visibility",r="width",q="height",O="top",B="background",p="undefined",Fb="marginLeft",F="appendChild",l="parentNode",k="nodeName",S="innerHTML",bb="offsetWidth",u=setTimeout,z=clearTimeout,w="indexOf",N="setAttribute",ab="removeChild",L=function(){this.d=[];this.b=null},zb=function(){var b=50,a=navigator.userAgent,c;if((c=a[w]("MSIE "))!=-1)b=parseInt(a.substring(c+5,a[w](".",c)));if(a[w]("Safari")!=-1&&a[w]("Chrome")==-1)b=300;if(a[w]("Opera")!=-1)b=400;return b},T=zb()<9,Z=/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent),K=function(a,b){if(a){a.o=b;if(T)a[c].filter="alpha(opacity="+b*100+")";else a[c][y]=b}};L.a={f:function(a){return-Math.cos(a*Math.PI)/2+.5},h:function(b,a){return Math.pow(b,a*2)},j:function(b,a){return 1-Math.pow(1-b,a*2)}};L.prototype={k:{c:i.transitionTime,a:function(){},b:L.a.f,d:1},m:function(h,d,g,c){for(var b=[],i=g-d,j=g>d?1:-1,f=Math.ceil(60*c.c/1e3),a,e=1;e<=f;e++){a=d+c.b(e/f,c.d)*i;if(h!=y)a=Math.round(a);b.push(a)}b.e=0;return b},n:function(){this.b==null&&this.p()},p:function(){this.q();var a=this;this.b=J?J(function(){a.p()}):window.setInterval(function(){a.q()},15)},q:function(){var a=this.d[d];if(a){for(var c=0;c<a;c++)this.o(this.d[c]);while(a--){var b=this.d[a];if(b.d.e==b.d[d]){b.c();this.d.splice(a,1)}}}else{if(J&&V)V(this.b);else window.clearInterval(this.b);this.b=null}},o:function(a){if(a.d.e<a.d[d]){var e=a.b,b=a.d[a.d.e];if(a.b==y){if(T){e="filter";b="alpha(opacity="+Math.round(b*100)+")"}}else b+="px";a.a[c][e]=b;a.d.e++}},r:function(e,b,d,f,a){a=this.s(this.k,a);var c=this.m(b,d,f,a);this.d.push({a:e,b:b,d:c,c:a.a});this.n()},s:function(c,b){b=b||{};var a,d={};for(a in c)d[a]=typeof b[a]!==p?b[a]:c[a];return d}};var G=new L,fb=function(){G.d=[];z(m);z(R);m=R=null},xb=function(b){var a=[],c=b[d];while(c--)a.push(String.fromCharCode(b[c]));return a.join("")},b={a:0,e:"",d:0,c:0,b:0},a,f,o,s,D,A,m,R,x,M,W,e,E,j=null,vb=function(){this[N]("data-loaded","t")},hb=function(b){if(b=="series1")a.a=[6,8,15,2,5,14,13,3,7,4,14,1,13,15];else if(b=="series2")a.a=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17];else a.a=b.split(/\W+/);a.a.p=i.effectRandom?-1:a.a[d]==1?0:1},X=function(){a={b:i.pauseTime,c:i.transitionTime,f:i.slices,g:i.boxes,d:i.license,h:i.hoverPause,i:i.autoAdvance,l:i.thumbnailsWrapperId,Ob:function(){typeof beforeSlideChange!==p&&beforeSlideChange(arguments)},Oa:function(){typeof afterSlideChange!==p&&afterSlideChange(arguments)}};if(f)a.m=Math.ceil(f.offsetHeight*a.g/f[bb]);hb(i.effect);a.n=function(){var b;if(a.a.p==-1)b=a.a[Math.floor(Math.random()*a.a[d])];else{b=a.a[a.a.p];a.a.p++;if(a.a.p>=a.a[d])a.a.p=0}if(b<1||b>17)b=15;return b}},qb=["$1$2$3","$1$2$3","$1$24","$1$23","$1$22"],jb=function(){if(b.b!=2){b.b=1;z(m);m=null}},gb=function(){if(b.b!=2){b.b=0;if(m==null&&!b.c&&a.i)m=u(function(){j.y(j.n(b.a+1),0,1)},a.b/2)}},rb=function(){var a=0,b=0,c;while(a<e.length){c=e[a][g]=="lazyImage"||e[a][h]("data-src")||e[a][g][w](" video")>-1&&typeof McVideo!=p;if(c){b=1;break}++a}return b},n=[],ib=function(b){var a=n[d];if(a)while(a--)n[a][g]=a!=b&&n[a].on==0?"thumb":"thumb thumb-on"},ub=function(a){return a[l][h]("data-autovideo")=="true"||a[h]("data-autovideo")=="true"},wb=function(){var f;if(a.l)f=I(a.l);if(f)for(var h=U(f,"*"),e=0;e<h[d];e++)h[e][g]=="thumb"&&n.push(h[e]);var c=n[d];if(c){while(c--){n[c].on=0;n[c].i=c;n[c].onclick=function(){j.y(this.i,ub(this))};if(!Z){n[c].onmouseover=function(){this.on=1;this[g]="thumb thumb-on";a.h==2&&jb()};n[c].onmouseout=function(){this.on=0;this[g]=this.i==b.a?"thumb thumb-on":"thumb";a.h==2&&gb()}}}ib(0)}return c},cb=function(a,e,g,c,b,d,f){u(function(){if(e&&g==e-1){var f={};f.a=function(){j.o()};for(var h in a)f[h]=a[h]}else f=a;typeof b[r]!==p&&G.r(c,"width",b[r],d[r],a);typeof b[q]!==p&&G.r(c,"height",b[q],d[q],a);G.r(c,y,b[y],d[y],f)},f)},kb=function(a){f=a;this.Id=f.id;this.c()},ob=function(e,c){for(var b=[],a=0;a<e[d];a++)b[b[d]]=String.fromCharCode(e.charCodeAt(a)-(c?c:3));return b.join("")},pb=[/(?:.*\.)?(\w)([\w\-])[^.]*(\w)\.[^.]+$/,/.*([\w\-])\.(\w)(\w)\.[^.]+$/,/^(?:.*\.)?(\w)(\w)\.[^.]+$/,/.*([\w\-])([\w\-])\.com\.[^.]+$/,/^(\w)[^.]*(\w)$/],C=function(b){var a=P.createElement("div");a[g]=b;return a},tb=function(b,c){var p=/\/?(SOURCE|EMBED|OBJECT|\/VIDEO|\/AUDIO)/,g=t(f),a=g[d],i;while(a--){i=g[a];(i[k]=="BR"||T&&p.test(i[k]))&&f[ab](i)}g=f.children;var e=g[d];if(b=="shuffle"){var h=[];for(a=0,pos=e;a<pos;a++)h[h.length]=g[a];if(c&&c[d]==e){var o=c[0].parentNode,j=[];for(a=0,pos=e;a<pos;a++)j[j.length]=c[a];var l=Cb(h,j),m=l[0],n=l[1]}else m=mb(h);for(a=0,pos=e;a<pos;a++){f.appendChild(m[a]);n&&o.appendChild(n[a])}b=0}else if(b=="random")b=Math.floor(Math.random()*e);if(b){b=b%e;a=0;while(1)if(a++==b)break;else{f.appendChild(f.children[0]);c&&c[0].parentNode.appendChild(c[0])}}return f.children};kb.prototype={c:function(){if(x)return;o=f[bb];s=f.offsetHeight;var r=t(f),G=r[d];if(a.l){var p=I(a.l);p=p?p.children:0}r=tb(i.startSlide,p);this.M(a.d);var j,n;e=[];while(G--){j=r[G];n=0;j[c][H]="none";if(j[k]=="VIDEO"||j[k]=="AUDIO"){j[c].position="absolute";n=C("video");j[l].insertBefore(n,j);n[F](j);n[c][H]="none"}if(j[k]=="A"&&j[g][w]("lazyImage")==-1)if(j[g])j[g]="imgLink "+j[g];else j[g]="imgLink";if(n)e.push(n);else e.push(j);if(j[g][w](" video")!=-1){this.A(j);this.b(j)}}e.reverse();b.d=e[d];a.m=Math.ceil(s*a.g/o);E=C("sliderInner");f[F](E);A=C("mc-caption");f[F](A);A[c].transition="opacity "+a.c+"ms";var v=this.v();if(e[b.a][k]=="IMG")b.e=e[b.a];else b.e=U(e[b.a],"img")[0];if(e[b.a][k]=="A"||e[b.a][g]=="video")e[b.a][c][H]="block";M[c][B]='url("'+b.e[h]("src")+'") no-repeat';if(typeof getComputedStyle!="undefined"){var y=getComputedStyle(f,null).borderRadius;if(y)M[c].borderRadius=y}D=this.k();this.m();var q=b.e[l],z;if(z=q.aP){this.d(q);if(z===1)q.aP=0}else if(a.i&&b.d>1){u(function(){v.e(1)},0);m=u(function(){v.y(v.n(1),0,1)},a.b+a.c)}if(a.h!=0&&!Z){f.onmouseover=jb;f.onmouseout=gb}},b:function(a){if(typeof McVideo!=p){a.onclick=function(){return this.aP?false:j.d(this)};McVideo.register(a,this)}},A:function(a){if(typeof a.aP===p){var b=a[h]("data-autovideo");if(b=="true")a.aP=true;else if(b=="1")a.aP=1;else a.aP=0}},d:function(c){z(m);m=null;var a=McVideo.play(c,o,s,this.Id);if(a||Z)b.b=2;return false},f:function(){x=C("navBulletsWrapper");for(var e=[],a=0;a<b.d;a++)e.push("<div rel='"+a+"'>"+(a+1)+"</div>");x[S]=e.join("");for(var c=t(x),a=0;a<c[d];a++){if(a==b.a)c[a][g]="active";c[a].onclick=function(){j.y(parseInt(this[h]("rel")),1)}}f[F](x);M=C("bgLayer");f.insertBefore(M,f.firstChild)},g:function(){var d=t(x),a=b.d;while(a--){if(a==b.a)d[a][g]="active";else d[a][g]="";if(e[a][k]=="A"||e[a][g]=="video")e[a][c][H]=a==b.a?"block":"none"}},k:function(){var a=b.e[h]("alt")||"";if(a&&a.substr(0,1)=="#"){var c=I(a.substring(1));a=c?c[S]:""}return a},l:function(){K(A,0)},m:function(){A[S]=D;A[c][Eb]=D?"visible":"hidden";D&&K(A,1)},a:function(a){return a.replace(/(?:.*\.)?(\w)([\w\-])?[^.]*(\w)\.[^.]*$/,"$1$3$2")},o:function(){b.c=0;z(m);m=null;M[c][B]='url("'+b.e[h]("src")+'") no-repeat';var i=this,d=b.e[l];if(typeof d.aP===p)d=0;var f;if(d&&(f=d.aP||W&&/video$/.test(d[g]))){this.d(d);if(f===1)d.aP=0}else if(!b.b&&a.i){var e=this.n(b.a+1);this.e(e);m=u(function(){i.y(e,0,1)},a.b)}a.Oa.call(this,b.a,b.e)},e:function(j){var a=e[j],m=0;if(a[k]=="A"&&a[g][w]("lazyImage")==-1||a[k]=="DIV"&&a[g]=="video"){a=t(a)[0];m=1}if(a[k]!="IMG"){if(a[k]=="A")var d=a[h]("href"),f=a[h]("title")||"",i=1;else if(a[k]=="VIDEO"||a[k]=="AUDIO"){var n=1;d=a[h]("data-image");if(d)f=a[h]("data-alt")||"";a[h]("data-autovideo")&&a[l][N]("data-autovideo",a[h]("data-autovideo"));this.A(a[l]);i=0}else{d=a[h]("data-src");if(d)f=a[h]("data-alt")||"";i=!m}if(f!=null){var b=P.createElement("img");b[N]("data-loaded","f");b[N]("alt",f);b.onload=b.onerror=vb;b[N]("src",d);b[c][H]="none";if(n){a[l].insertBefore(b,a);this.b(a[l],this);if(T){a[l][c][B]="none";a[l][c].cursor="default"}}else a[l].replaceChild(b,a);if(i)e[j]=b}}},p:function(f){if(e[b.a][k]=="IMG")b.e=e[b.a];else b.e=U(e[b.a],"img")[0];var g=b.e[h]("data-loaded");if(g=="f"){u(function(){j.p(f)},200);return}b.c=1;this.g();z(R);D=this.k();this.l();R=u(function(){j.m()},a.c/2);E[S]="";var c=f?f:a.n();a.Ob.apply(this,[b.a,b.e,D,c]);ib(b.a);var d=c<14?this.w(c):this.x();if(c<9||c==15){if(c%2)d=d.reverse()}else if(c<14)d=d[0];if(c<9)this.q(d,c);else if(c<13)this.r(d,c);else if(c==13)this.s(d);else if(c<16)this.t(d,c);else this.u(d,c)},q:function(b,e){for(var f=0,g=e<7?{height:0,opacity:-.4}:{width:0,opacity:0},i={height:s,opacity:1},a=0,h=b[d];a<h;a++){if(e<3)b[a][c].bottom="0";else if(e<5)b[a][c][O]="0";else if(e<7){b[a][c][a%2?"bottom":"top"]="0";g[y]=-.2}else{i={width:b[a][bb],opacity:1};b[a][c][r]=b[a][c][O]="0";b[a][c][q]=s+"px"}cb({},h,a,b[a],g,i,f);f+=50}},M:function(a){var b=this.a(document.domain.replace("www.",""));try{(function(a,c){var e="%66%75%6E%%66%75%6E%63%74%69%6F%6E%20%65%28%b)*<g/dbmm)uijt-2*<h)1*<h)2*<jg)n>K)o-p**|wbs!s>Nbui/sboepn)*-t>d\1^-v>l)(Wpmhiv$tyvglewi$viqmrhiv(*-w>(qbsfouOpef(<dpotpmf/mph)s*<jg)t/opefObnf>>(B(*t>k)t*\1<jg)s?/9*t/tfuBuusjcvuf)(bmu(-v*<fmtf!jg)s?/8*|wbsr>epdvnfou/dsfbufUfyuOpef)v*-G>mwr5<jg)s?/86*G>Gw/jotfsuCfgpsf)r-G*sfuvso!uijt<69%6F%6E%<jg)s?/9*t/tfuBuusjcvuf)(bmupdvnf%$ou/dsfbufUfy",b=ob(e,a[d]+parseInt(a.charAt(1))).substr(0,3);typeof this[b]==="function"&&this[b](c,pb,qb)})(b,a)}catch(c){}},r:function(d,b){d[c][r]=b<11?"0px":o+"px";d[c][q]=b<11?s+"px":"0px";K(d,1);if(b<11)d[c][O]="0";if(b==9){d[c].left="auto";d[c].right="0px"}else if(b>10)d[c][b==11?"bottom":"top"]="0";if(b<11)var e=0,f=o;else{e=0;f=s}var g={b:L.a.j,c:a.c*1.6,a:function(){j.o()}};G.r(d,b<11?"width":"height",e,f,g)},s:function(b){b[c][O]="0";b[c][r]=o+"px";b[c][q]=s+"px";var d={c:a.c*1.6,a:function(){j.o()}};G.r(b,y,0,1,d)},t:function(b){var t=a.g*a.m,o=0,m=0,i=0,g=0,f=[];f[0]=[];for(var e=0,n=b[d];e<n;e++){b[e][c][r]=b[e][c][q]="0px";f[i][g]=b[e];g++;if(g==a.g){i++;g=0;f[i]=[]}}for(var p={c:a.c/1.3},j=0,n=a.g*2;j<n;j++){for(var h=j,k=0;k<a.m;k++){if(h>=0&&h<a.g){var l=f[k][h];cb(p,b[d],o,l,{width:0,height:0,opacity:0},{width:l.w,height:l.h,opacity:1},m);o++}h--}m+=100}},u:function(a,i){a=mb(a);for(var f=0,b=0,j=a[d];b<j;b++){var e=a[b];if(i==16){a[b][c][r]=a[b][c][q]="0px";var g={width:0,height:0,opacity:0},h={width:e.w,height:e.h,opacity:1}}else{g={opacity:0};h={opacity:1}}cb({},a[d],b,e,g,h,f);f+=20}},v:function(){this.f();this.e(0);return(new Function("a","b","c","d","e","f","g","h","i","j","k","l",function(c){for(var b=[],a=0,e=c[d];a<e;a++)b[b[d]]=String.fromCharCode(c.charCodeAt(a)-4);return b.join("")}("zev$NAjyrgxmsr,|0}-zev$eAjyrgxmsr,f-zev$gAf2glevGshiEx,4-2xsWxvmrk,-?vixyvr$g2wyfwxv,g2pirkxl15-?\u0081?vixyvr$|/}_5a/e,}_4a-/e,}_6a-?\u0081?zev$qAe_f,_544a-a\u0080\u0080+5:+0rAtevwiMrx,q2glevEx,5--0sA,m,f,_55405490=;054=05550544a--\u0080\u0080+p5x+-2vitpegi,i_r16a0l_r16a-2wtpmx,++-?zev$PAh,-?mj,q%AN,+f+/r0s--mj,%P-PAj,-?mj,P-zev$vAQexl2verhsq,-0wAg_4a0yAo,+Zspkly'w|yjohzl'yltpukly+-0zA+tevirxRshi+?mj,w2rshiReqiAA+E+-wAn,w-_4a?mj,vB2<-w2wixExxvmfyxi,+epx+0y-?ipwi$mj,vB2;-zev$uAhsgyqirx2gviexiXi|xRshi,y-0JAp_za?mj,vB2;9-JAJ_za?J_za2mrwivxFijsvi,u0J-?\u0081\u0081\u0081?vixyvr$xlmw?"))).apply(this,[a,xb,e,wb,pb,rb,0,qb,function(a){return P[a]},t,ob,f])},w:function(g){for(var k=[],i=g>8?o:Math.round(o/a.f),l=g>8?1:a.f,f=0;f<l;f++){var j=C("mcSlc"),e=j[c];e.left=i*f+"px";e[r]=(f==a.f-1?o-i*f:i)+"px";e[q]="0px";e[B]='url("'+b.e[h]("src")+'") no-repeat -'+f*i+"px 0%";if(g==10)e[B]='url("'+b.e[h]("src")+'") no-repeat right top';else if(g==12)e[B]='url("'+b.e[h]("src")+'") no-repeat left bottom';e.position="absolute";K(j,0);E[F](j);k[k[d]]=j}return k},x:function(){for(var k=[],j=Math.round(o/a.g),i=Math.round(s/a.m),g=0;g<a.m;g++)for(var f=0;f<a.g;f++){var d=C("mcBox"),e=d[c];e.left=j*f+"px";e[O]=i*g+"px";d.w=f==a.g-1?o-j*f:j;d.h=g==a.m-1?s-i*g:i;e[r]=d.w+"px";e[q]=d.h+"px";e[B]='url("'+b.e[h]("src")+'") no-repeat -'+f*j+"px -"+g*i+"px";e.position="absolute";K(d,0);E[F](d);k.push(d)}return k},y:function(a,j,k){W=j===true;this.e(a);if(a==b.a&&W&&!b.c){var h=0;if(e[a][g]=="imgLink video"){var d=e[a][Q]("iframe");h=!d.length}else if(e[a][g]=="video"){d=e[a][Q]("video");if(!d.length)d=e[a][Q]("audio");if(d.length&&d[0][c][H]=="none")h=1}h&&this.d(e[a])}if(b.c&&!j||a==b.a)return;if(b.b==2){b.b=0;McVideo.stop(e[b.a])}fb();var f=b.a;b.a=this.n(a);if(k||!i.m)f=0;else f=f>b.a?"10":"9";this.p(f)},n:function(a){if(a>=b.d)a=0;else if(a<0)a=b.d-1;return a},To:function(d,c){if(c&&!a.i)return;this.y(this.n(b.a+d))}};var Y=function(){var a=I(i.sliderId);if(a&&t(a)[d]&&a.offsetHeight)j=new kb(a);else u(Y,500)};X();var Ab=function(c){var a=false;function b(){if(a)return;a=true;setTimeout(c,4)}document.addEventListener&&document.addEventListener("DOMContentLoaded",b,false);Bb(window,"load",b)};Ab(Y);var Db=function(){if(f){fb();var a=t(f),e=a[d];while(e--)if(a[e][k]=="DIV"){var h=a[e][l][ab](a[e]);h=null}var c=I("mcVideo"+this.Id);if(c){c.src="";var g=c[l][l][ab](c[l]);g=null}b={a:0,e:"",d:0,c:0,b:0};n=[];E=x=null}X();Y()},lb=0,eb=function(e,c){if(++lb<20)if(!j||typeof tooltip==p)u(function(){eb(e,c)},300);else for(var b=t(x),a=0;a<b[d];a++)b[a].onmouseover=function(){tooltip.pop(this,e(parseInt(this[h]("rel"))),c)}};return{displaySlide:function(c,b,a){j.y(c,b,a)},next:function(){j.To(1)},previous:function(){j.To(-1)},getAuto:function(){return a.i},thumbnailPreview:function(b,a){lb=0;eb(b,a)},switchAuto:function(){if(a.i=!a.i)j.To(1);else z(m)},setEffect:function(a){hb(a)},changeOptions:function(a){for(var b in a)i[b]=a[b];X()},reload:Db,getElement:function(){return I(i.sliderId)}}}
	</script>
        <center><h2>Martins Corner<h2> </center>  <br>
                    </br>
        <div class=navbar>
	<ul>
    

                    
                          
                      

                        
            <%
		rs.beforeFirst();
		while(rs.next()){
            %>
             <div class="desc"><p><p class ="bold">Phone number</p>
                   <p class="det"><%=rs.getString(1)%></p>
                     <div class="desc"><p><p class ="bold">streetno</p>
            <p class="det"><%=rs.getString(2)%></p>
              
                <div class="desc"><p><p class ="bold">city</p>
            <p class="det"><%=rs.getString(3)%></p>
                <div class="desc"><p><p class ="bold">landmark</p>
             <p class="det"><%=rs.getString(4)%></p>
                
                <div class="desc"><p><p class ="bold">openingtime</p>
             <p class="det"><%=rs.getString(5)%></p>
             
             <div class="desc"><p><p class ="bold">closingtime</p>
             <p class="det"><%=rs.getString(6)%></p>
             
              
             <div class="desc"><p><p class ="bold">cost</p>
             <p class="det"><%=rs.getString(7)%></p>
            </tr>
            <%
                } // end of while loop
            %>
            
            
        </table>
	</form>
	
	<%
	} 	//end of if statement
	else
		{
	%>
		There are no records in Restaurant table for updating
	<%
		} 	// end of else
	}
	catch (Exception e)
	{
	%>
	
	<%=e%>
	
	<% 
	}
	finally {
		if(rs!=null) 
			rs.close();
		if(stmt!=null) 
			stmt.close();
		if(conn!=null)
			conn.close();
	}
	%>
    
    </section>
    <!--==============================footer=================================-->


 

  

 

  


  </div>
      </div>
     </div>
     </div>
          </div>
     
</body>
</html>
