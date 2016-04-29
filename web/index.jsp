<%-- 
    Document   : first
    Created on : Apr 13, 2016, 8:25:51 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>   
<html lang="en">
<head>
<title>Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
<meta charset="utf-8">
<style>
html, body {
	width:100%;
	padding:0;
	margin:0;
}
body {
	font: 14px/18px "Times New Roman", Times, serif;
	color:#b4b4b4;
	min-width:960px;
	background: url("image/bg.gif") center 0 repeat;
}

.bgr {
	background:url("image/bgr.jpg") center 0 no-repeat;
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
.block-2 {
	overflow:hidden;
	border:#bebebe 1px solid;
	border-top:none !important;
	background:url(image/block-2.jpg) 0 bottom repeat-x #fff;
	<!--background-color:white;-->
	padding-bottom:62px;
}

h3 {
	font-size:36px;
	line-height:45px;
	color:#131313;
	font-weight:normal;
	font-style:italic;
	text-shadow:#6c6c6c 0px 0px 3px;
}
.pad-1 {
	padding:33px 39px 0px 39px;
}
.top-1 {
	padding-top:2px;
}
.h3-line {
	border-bottom:#d6d6d6 1px solid;
	padding-bottom:2px;
}
.h3 {
	text-align:center;
}
.h3-line-2 {
	border-bottom:#d6d6d6 1px solid;
	padding-bottom:2px;
	display:inline-block;
}
.box-3 {
	overflow:hidden;
	padding-top:10px;
	margin:0 40px 0 40px;
}
.box-3>div {
	width:250px;
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
	padding:10px;
	border:#d7d7d7 3px solid;
}
.border-2 {
	background:url("image/line.jpg") center bottom no-repeat;
	padding-bottom:6px;
	margin-bottom:5px;
}
.it-bold {
	font-style:italic;
	font-weight:bold;
}
.clr-1 {
	color:#131313;
}

header {
	width:950px;
	margin:0px auto;
	padding-top:15px;
	padding-bottom:20px;
	z-index:101;
	position:relative;
}
h1 {
	display:inline-block;
	z-index:100;
	<!--background:url("logo-bg.jpg") 0 0 no-repeat;-->
	width:550px;
	height:100px;
	margin-left:104px;
	padding-left:194px;
}
.back{

     display:block;
     background:url("image/dining.jpg") no-repeat;
     width:100%;
     height:450px;
     border:5px solid black;
	 position:relative;
	 margin-top:100px;
	z-index:100;
	overflow:hidden;


}
.indiv
{
float:left;
margin-top:50px;


}

.last{
     display:block;
    
margin-top:100px;
	 margin-left:250px;
     width:750px;
     color:white;
     font-size:3em;
     text-shadow:0 2px 3px black;
}



.input{
      height:40px;
     font-size: 20px;
-webkit-border-radius:7px;
	-moz-border-radius:7px;
	border-radius:7px;
	background-color:#cb202d;
	border:1px solid grey;
}
#in{
     height:35px;
     font-size: 20px;
    -webkit-border-radius:7px;
	-moz-border-radius:7px;
	border-radius:7px;
	border:1px solid grey;
}


.combo{
      width:150px;
      
      height:40px;
     font-size:15px;
      -webkit-border-radius:7px;
	 -moz-border-radius:7px;
	 border-radius:7px;
	 border:1px solid grey;
}
.outer{
/*margin-left:170px*/
margin-left:170px
}
footer {
	width:950px;
	margin:0 auto;
	position:relative;
	overflow:hidden;
	padding:32px 0 40px 0;
	text-align:center;
	color:#a3a2a2;
	background:url("image/footer-bg.png") center 0 no-repeat;
}
footer p, footer p a.link {
	font-weight:bold;
}

</style>

</head>
<body>

  <div class="bgr">
    <!--==============================header=================================-->
    <header>
      <h1><a href="index.html"><img src="image/mlogo1.jpg" alt="" style="border-radius:10px;"></a></h1>
      
      
    </header>
    <!--==============================content================================-->
    <section id="content">
        <form name="searchform" action="result.jsp" method="post">
      <div class="back">
	         <div class="last indivS">Find your perfect Restaurant</div>
	   <div class="outer">
          <div class="indiv">
                       <select class="combo" name="combolist">
                 <option value="rname">Restaurant Name</option>
                 <option value="city">City</option>
                 <option value="cuisine">Cuisine</option>
                 
                        </select>
             </div>
          <div class="indiv">
                         <input id="in" type="text" name="search1" value="" size="40" placeholder="place/restaurant" >
                         
          </div>
                         
           <div class="indiv">
                 <input class="input" type="submit" name="submit" value="search" >
             </div>
	  </div>
         </div>
        </form>

       <div class="block-2 pad-1" style="margin-top:100px">
       
          <h3 class="h3-line top-1">Featured:</h3>
		  <div class="box-3">
            <div>
              <div class="img-border"><img src="image/1.jpg" alt=""></div>
              <p class="border-2"><span class="it-bold clr-1">Fisherman Wharf</span><br>
                Cuisie:</br> 
				Cost:</p>
             </div>
            <div>
              <div class="img-border"><img src="image/2.jpg" alt=""></div>
              <p class="border-2"><span class="it-bold clr-1">Joe's River Cove</span><br>
                Cuisie:</br> 
				Cost:</p>
           </div>
            <div>
              <div class="img-border"><img src="image/3.jpg" alt=""></div>
              <p class="border-2"><span class="it-bold clr-1">Kismoor</span><br>
                Cuisie:</br> 
				Cost:</p>
              </div>
            <div>
              <div class="img-border"><img src="image/4.jpg" alt=""></div>
              <p class="border-2"><span class="it-bold clr-1">Aimori</span><br>
                Cuisie:</br> 
				Cost:</p>
              </div>
          </div>
        </div>
       
 
    </section>
    <!--==============================footer=================================-->
    <footer>
      
    </footer>
  </div>

</body>
</html>
