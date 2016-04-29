<%-- 
    Document   : review
    Created on : Apr 14, 2016, 5:59:39 AM
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
<html lang="en">
<head>
<title>Valencia</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">

<style>
input[type="text"]
{
width:50%;
height:50px;
margin-top:50px;
margin-left:50px;
border-radius:5px;
font-size:20px;
background-color:grey;
}
input[type="submit"]
{
width:20%;
height:50px;
border-radius:10px;
font-size:20px;
}

.outer_border
{
height:500px;
width:700px;
background-color:grey;
border-radius:5px;
}

.rating
{
margin:10px;
background-color:white;
}

.review
{
margin:20px;
padding:5px;
background-color:white;
width:650px;
height:300px;
}
.claer
{
height:10px;
background-color:grey;
height:10px;
}
</style>


</head>
<body>
<div class="bg-top">
  <div class="bgr">
    <!--==============================header=================================-->
    <header>
      <h1><a href="index.html"><img src="images/mlogo1.jpg" alt=""></a></h1>
 
      
        
      
    </header>
    <!--==============================content================================-->
    <section id="content">
     
      <div class="block-2 pad-1" style="margin-top:100px; font-size:20px">
       
          <h3 class="h3-line top-1">Review</h3>
		  <form method="post" action="#">
		  <!--Hidden fields -->
		  <input type="hidden" name="restaurant_id" id="restaurant_id"value="103"/>
		  <input type="hidden" name="foodie_id" id="foodie_id" value="1"/>
		  <!--Hidden fields -->
		  
		  <div class="outer_border">
		  <div class="clear">a</div>
                  <div id ="containerAdiv">
		  <div class="rating"><h3>Rating:</h3></div>
		  <div class="review" id="revieww" name="revieww">
                      <textarea name="message" rows="20" cols="40"></textarea>
		  
		  </div>
		  
		  <input type="submit" name="submit" value="PUBLISH"  />
                  </div>
                  </div>
                  <div id=""containerB>
                      
		  
		  </div>
                  <% 
                      
                      try
                      {
                      
                      if(request.getParameter("submit")!=null)
		  
		  {
		  String restaurant_id = request.getParameter("restaurant_id");
            String foodie_id = request.getParameter("foodie_id");
	String review = request.getParameter("message");
            //String review ="test";
            restaurant_id.trim();
            foodie_id.trim();
			review.trim();
            Class.forName( driver );

// initialize the Connection, with our DB info ...
Connection con = DriverManager.getConnection( url, name, pass );

Statement stat = con.createStatement();

String query ="INSERT INTO reviews(review_text,restaurant_id,foodie_id) values('"+review+"','"+restaurant_id+"',"+ foodie_id +")";

int result = stat.executeUpdate(query);
if(result==-1)
{%>

<h1>Insert Failure</h1>
<%}else{%>
<h1>Insert Success</h1>

       <% }}}
       catch (SQLException sqle)
{ out.println("<p> Error opening JDBC, cause:</p> <b> " + sqle + "</b>"); }

catch(ClassNotFoundException cnfe)
{ out.println("<p> Error opening JDBC, cause:</p> <b>" + cnfe + "</b>"); }
       
       %>


          
		  
		  
		  
		
   
									
            
           
        </div>
          
        </div>
       <div class="clear">
           
       </div>
        
    </section>
    <!--==============================footer=================================-->
    <footer>
     
    </footer>
  </div>
</div>
</body>
</html>

