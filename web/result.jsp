<%-- 
    Document   : uploadimage
    Created on : Apr 1, 2016, 8:16:18 PM
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%!
// mysql driver
String driver = "com.mysql.jdbc.Driver";

// the "url" to our DB, the last part is the name of the DB
String url = "jdbc:mysql://localhost:3306/restaurant_project";

// the default DB username and password may be the same as your control panel login

String name = "root";
String pass = "";


%>

<!DOCTYPE html>
<html>
<head>
<title>Second Page</title>

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






.box-3 {
	overflow:hidden;
	
	margin:0 40px 0 40px;
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






.div1{
        float:left;
        width:400px;
        height:300px;
       -webkit-border-radius:8px;
	   -moz-border-radius:8px;
	    border-radius:8px;
		overflow:hidden;
        border:black 3px solid;
        margin-right: 10px;
}

.img
{
  display:block;
 
  width:400px;
  height:200px;
  border:3px solid #d7d7d7;

}
 
a{
	text-decoration:none;
	color:#cb202d;
}

.namefont{
     display:block;
     margin:20px;
     color:white;
     font-size:2em;
     text-shadow:0 2px 3px black;

}
#in1{
      font-size:20px;
      border:none;
}
.top{
     padding-top:10px;
     padding-left:10px;
}
.f{
   font-size:20px;
   color:grey;
 }
.fn{
    font-size:20px;
    color:grey;
    -webkit-border-radius:8px;
	-moz-border-radius:8px;
	 border-radius:8px;
     width:150px;
}
 
.bord{ 
     border:3px solid #d7d7d7;
     height:125px;
     background-color: white;
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
    
    <% 
           String combolist1 = request.getParameter("combolist");
           String search = request.getParameter("search1");
           
           
          String search_rname="rname";
          String search_city="city";
          String search_cuisine="cuisine";
          
          combolist1.trim();
          
          String query;
          
          ResultSet rs = null;
            
           
            
            Class.forName( driver );

// initialize the Connection, with our DB info ...
Connection con = DriverManager.getConnection( url, name, pass );

Statement stat = con.createStatement();

if(combolist1.equals("rname"))
{
   //rs=stat.executeQuery("SELECT restaurant.restaurant_id, restaurant.name,restaurant.cost,restaurant.city,restaurant_images.restaurant_image FROM restaurant INNER JOIN restaurant_images ON restaurant.restaurant_id=restaurant_images.restaurant_id WHERE restaurant.name like '%"+search+"%' AND flag=1");
    rs=stat.executeQuery("select restaurant_id,name,city,cost from restaurant where name LIKE '%"+search+"%'");

}

else if(combolist1.equals("city"))
{
 // rs=stat.executeQuery("select restaurant_id,name,city,cost from restaurant where city LIKE '%"+search+"%'");
  rs=stat.executeQuery("select restaurant_id,name,city,cost from restaurant where city LIKE '%"+search+"%'");   
}
else
{
   
//rs=stat.executeQuery("SELECT * FROM restaurant INNER JOIN restaurant_cuisine ON restaurant.restaurant_id=restaurant_cuisine.restaurant_id and cuisine_id=( select cuisine_id from cuisines where cuisine_type like '%"+search+"%')");
    
}




 
          %>


  <div class="bgr">
    <!--==============================header=================================-->
    <header>
      <h1><a href="index.html"><img src="image/mlogo1.jpg" alt="" style="border-radius:10px;"></a></h1>
      
      
    </header>
    <!--==============================content================================-->
 <section id="content">

     <%
         while(rs.next())
     {
         String name = rs.getString(2);
         String cost = rs.getString(3);
         String r_id = rs.getString(1);
         String city = rs.getString(4);
         
         
     %>
     <div class="box-3">
     <form action="thirdpage.jsp" method="post">
        
         
            
      
    <div class="div1">
      <div class="img"  style="background-image:url(c1.png)">
	          <div class="namefont"> <a href=""><%=name%>,<%=city%></a></div>
	  </div>
	 <div class="bord">
              
	  
            <div class="top f">Cuisine :<%=cost%></div>
        
     </div>
</div>
             
        <%
                } // end of while loop
            %>
     
     </form>  
</div>     
     
     
    </section>
    <!--==============================footer=================================-->
    <footer>
      
    </footer>
  </div>

</body>
</html>
