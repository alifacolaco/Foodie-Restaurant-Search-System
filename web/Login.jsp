<%-- 
    Document   : Login.jsp
    Created on : 14 Apr, 2016, 3:46:25 PM
    Author     : Eva
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
<!DOCTYPE html>
<html lang="en">
    <head>
        <style>
            


body {
  margin: 0;
  padding: 0;
  font-family: Sans-serif;
  background: #2c3e50;
}

#wrap {
  margin: 0 auto 30px;
}

#regbar {
  height: 67px;
  background: #34495e;
}

#navthing {
  margin-left: 50px;
}

h2 {
  padding: 20px;
  color: #ecf0f1;
}

fieldset {
  border: none;
}

.login {
  position: relative;
  width: 350px;
  display: none;
}

.register {
  position: relative;
  width: 350px;
  display: none;
}

.arrow-up {
  width: 0;
  height: 0;
  border-left: 20px solid transparent;
  border-right: 20px solid transparent;
  border-bottom: 15px solid #ECF0F1;
  left: 10%;
  position: absolute;
  top: -10px;
}

.formholder {
  background: #ecf0f1;
  width: 350px;
  border-radius: 5px;
  padding-top: 5px;
}
.formholder input[type="email"], .formholder input[type="password"] 
{
  padding: 7spx 5px;
  margin: 10px 0;
  margin: 10px 0;
    margin: 10px 0;
  width: 96%;
  display: block;
  font-size: 18px;
  border-radius: 5px;
  border: none;
  -webkit-transition: 0.3s linear;
  -moz-transition: 0.3s linear;
  -o-transition: 0.3s linear;
  transition: 0.3s linear;
}
.formholder input[type="email"]:focus, .formholder input[type="password"]:focus {
  outline: none;
  box-shadow: 0 0 1px 1px #1abc9c;
}
.formholder input[type="submit"] {
  background: #1abc9c;
  padding: 10px;
  font-size: 20px;
  display: block;
  width: 100%;
  border: none;
  color: #fff;
  border-radius: 5px;
}
.formholder input[type="submit"]:hover {
  background: #1bc6a4;
}

.randompad {
  padding: 5px;
}

.green {
  color: #1abc9c;
}

a {
  color: #ecf0f1;
  text-decoration: none;
}
a:hover {
  color: #1abc9c;
}

    </style>        
        
    </head>
    <body>
         <div id="wrap">
  <div id="regbar">
    <div id="navthing">
      <h2><a href="#" id="loginform">Login</a> | <a href="#" id="registerform">Register</a></h2>
    <!-- -->
	<div class="login">
      <div class="arrow-up"></div>
      <div class="formholder">
        <div class="randompad">
            <form name="loginn" action>
           <fieldset>
             <label name="email">Email</label>
             <input type="email" value="" />
             <label name="password">Password</label>
             <input type="password" />
             <input type="submit" value="Login" />
 
             <%
             if(request.getParameter("submit")!=null)
             {
         
            String email_id = request.getParameter("email_id"); 
             String pass_word = request.getParameter("pass_word");  

 Class.forName( driver );

// initialize the Connection, with our DB info ...
Connection con = DriverManager.getConnection( url, name, pass );

Statement stat = con.createStatement();
String query ="INSERT INTO foodie(email_id,pass_word) values('"+email_id+"','"+pass_word+"')";

int result = stat.executeUpdate(query);
if(result==-1)
{%>

<h1>Insert Failure</h1>
<%}else{%>
<h1>Insert Success</h1>

       <% }} %>


            
             
             
             
             
           </fieldset>
            </form>
        </div>
      </div>
    </div>
	
	<!-- -->

	
	 <!-- -->
	<div class="register">
      <div class="arrow-up"></div>
      <div class="formholder">
        <div class="randompad">
               <form name="registerr" action>
           <fieldset>
       	   <br><br>
           <label name="fname">FIRST NAME</label><br><br>
           <input type="text" value="" /><br><br>
             <label name="lname">LAST NAME</label><br>
             <input type="text" /><br><br>
			  
			 <label name="email">Email</label></br>
			  <input type="email" value="" />
             <label name="password">Password</label>
             <input type="password" />
             <input type="submit" value="sign up"  name="submit"/>
             
             
             <%
             if(request.getParameter("submit")!=null)
             {
             String fname = request.getParameter("fname");
            String lname = request.getParameter("lname"); 
            String email = request.getParameter("email"); 
             String password = request.getParameter("password");  
             
              Class.forName( driver );

// initialize the Connection, with our DB info ...
Connection con = DriverManager.getConnection( url, name, pass );

Statement stat = con.createStatement();
String query ="INSERT INTO foodie(fname,lname,email_id,pass_word) values('"+fname+"','"+lname+"','"+email+"','"+password+"')";

int result = stat.executeUpdate(query);
if(result==-1)
{%>

<h1>Insert Failure</h1>
<%}else{%>
<h1>Insert Success</h1>

       <% }} %>
             
             
             
             
             
 
           </fieldset>
               </form> 
        </div>
      </div>
    </div>
	
	<!-- -->
    </div>
  </div>
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    
    
    
    
    <script>
            
            $('input[type="submit"]').mousedown(function(){
  $(this).css('background', '#2ecc71');
});
$('input[type="submit"]').mouseup(function(){
  $(this).css('background', '#1abc9c');
});



$('#loginform').click(function(){
  $('.login').fadeToggle('slow');
  $(this).toggleClass('green');
});

$('#registerform').click(function(){
  $('.register').fadeToggle('slow');
  $(this).toggleClass('green');
});

$(document).mouseup(function (e)
{
    var container = $(".login");

    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
        container.hide();
        $('#loginform').removeClass('green');
    }
});


$(document).mouseup(function (e)
{
    var container = $(".register");

    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
        container.hide();
        $('#registerform').removeClass('green');
    }
});
            
            
            
            
            
    </script>
 
</body>
</html>