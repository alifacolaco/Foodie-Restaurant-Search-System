<%-- 
    Document   : AdminHome
    Created on : Apr 4, 2016, 10:35:01 AM
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%!
// mysql driver
String driver = "com.mysql.jdbc.Driver";

// the "url" to our DB, the last part is the name of the DB
String url = "jdbc:mysql://localhost:3306/rest";

// the default DB username and password may be the same as your control panel login

String name = "root";
String pass = "";


%>
<% 
            String username1 = request.getParameter("username");
            String password = request.getParameter("password");
            
            username1.trim();
            password.trim();
            Class.forName( driver );

// initialize the Connection, with our DB info ...
Connection con = DriverManager.getConnection( url, name, pass );

Statement stat = con.createStatement();
ResultSet rs = stat.executeQuery("Select * from admin where username = '" + username1 + "' and password = '" + password + "'");

if(rs.next())
{
    



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
margin-top:150px;
margin-left:150px;
border-radius:5px;
font-size:20px;
}
input[type="submit"]
{
width:20%;
height:50px;
border-radius:10px;
font-size:20px;
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
     
      <div class="block-2 pad-1" style="margin-top:100px">
       
         <h3 class="h3-line top-1">ADMIN Home</h3>
		  <div class="box-3">
            <div>
              <div class="img-border"><a href="addRestaurant.jsp"><img src="images/rest_add.jpg" alt=""></a></div>
              
             </div>
            <div>
              <div class="img-border"><a href="newSearchRecord.jsp"><img src="images/rest_edit.jpg" alt=""></a></div>
              
           </div>
            <div>
              <div class="img-border"><a href="newDeleteReord.jsp"><img src="images/rest_delete.jpg" alt=""></a></div>
         
              </div>
           
          </div>
        </div>
          
        </div>
        <div class="clear"></div>
        
    </section>
    <!--==============================footer=================================-->
    <footer>
     
    </footer>
  </div>
</div>
</body>
</html>
<%} else
{
%>
<jsp:forward page="login.html"/>
<%
}%>