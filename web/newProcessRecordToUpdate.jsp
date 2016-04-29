<%-- 
    Document   : newProcessRecordToUpdate
    Created on : 13 Apr, 2016, 10:48:20 PM
    Author     : ANISH   BHARNE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<html lang="en">
<head>
    <title>Processing the Record to update</title>
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
		
                .block-2 {
                    overflow:hidden;
                    border:#bebebe 1px solid;
                    border-top:none !important;
                    background:url(../images/block-2.jpg) 0 bottom repeat-x #fff;
                    <!--background-color:white;-->
                    padding-bottom:62px;
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
                    width:290px;
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
                    background:url("images/line.jpg") center bottom no-repeat;
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

		.link {
                    color:#50b3bc;
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
                    padding-top:15px;
                    padding-bottom:20px;
                    z-index:101;
                    position:relative;
                }
				
		h1 {
                    display:inline-block;
                    z-index:100;
                    <!--background:url("images/logo-bg.jpg") 0 0 no-repeat;-->
                    width:550px;
                    height:100px;
                    margin-left:104px;
                    padding-left:194px;
		}
			
		.back{
                    display:block;
                    background:url("images/dining.jpg") no-repeat;
                    width:100%;
                    height:450px;
                    border:5px solid black;
		}
				
		.wrap{
                    display:block;
                    margin:auto;
                    text-align:center;
                    padding-top:85px;
                    width:40%;
		}
	
		.last{
                    display:block;
                    margin:20px;
                    width:750px;
                    color:white;
                    font-size:3em;
                    text-shadow:0 2px 3px black;
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
                    right:0px;
		}
				
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
            </style>
</head>
	<body>
		<div class="bgr">
			<!--==============================header=================================-->
			<header>
				<h1><a href="index.html"><img src="images/mlogo1.jpg" alt="" style="border-radius:10px;"></a></h1>
			</header>
			<!--==============================content================================-->
			<section id="content">
				<div class="back">
					<div class="wrap">
						<div class="last">Find your perfect Restaurant</div>
							<div class="searchwrap">
								<input id="in" type="text" name="search1" value="" size="40" placeholder="place/restaurant/cuisines" >
									<div class="testbetn">
										<input class="input" type="submit" name="submit" value="search" >
									</div>
							</div>
					</div>  
				</div>
				
				
				
				
				
				
				
				
				<div class="block-2 pad-1" style="margin-top:100px">
					<h3 class="h3-line top-1">Processing Record to Update:</h3>
						<div class="box-3">
						
                                                    <% 
        String restaurant_id=request.getParameter("selectedRecord");
	String name="",phone_no="",street_no="",city="",landmark="",opening_time="",closing_time="",closed_day="",cost="";
        
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	if(restaurant_id != null){
            try
		{
                    Class.forName("org.gjt.mm.mysql.Driver");
                    String url="jdbc:mysql://localhost:3306/restaurant_project";
                    String user="root";
                    String password="";
	
                    conn=DriverManager.getConnection(url,user,password);
                    stmt = conn.createStatement();
                    String sqlSt="Select name,phone_no,street_no,city,landmark,opening_time,closing_time,closed_day,cost from restaurant where restaurant_id="+restaurant_id+"";
                    
                    rs=stmt.executeQuery(sqlSt);
                    while(rs.next()){
			name=rs.getString(1);
			phone_no=rs.getString(2);
			street_no=rs.getString(3);
			city=rs.getString(4);
			landmark=rs.getString(5);
			opening_time=rs.getString(6);
			closing_time=rs.getString(7);
			closed_day=rs.getString(8);
			cost=rs.getString(9);
                        }
                    }
                    catch(Exception e){
    %>
    <%=e%>
    <% 
                    }
                    finally
                    {	
			if(rs!=null) 
                            rs.close();
			if(stmt!=null) 
                            stmt.close();
			if(conn!=null)
                            conn.close();
                    }
    %>
    <form action="newPerformActualUpdate.jsp" method="post">
	<table>
            <tr>
		<td>Restaurant Id</td>
		<td><input type="text" name="restaurant_id" value="<%=restaurant_id%>" readOnly="readonly"></td>
            </tr>
            <tr>
		<td>Restaurant Name</td>
		<td><input type="text" name="name" value="<%=name%>"></td>
            </tr>	
            <tr>
		<td>Phone No</td>
		<td><input type="text" name="phone_no" value="<%=phone_no%>"></td>
            </tr>
            <tr>
		<td>Street No</td>
		<td><input type="text" name="street_no" value="<%=street_no%>"></td>
            </tr>
            <tr>
		<td>City</td>
		<td><input type="text" name="city" value="<%=city%>"></td>
            </tr>
            <tr>
		<td>Landmark</td>
		<td><input type="text" name="landmark" value="<%=landmark%>"></td>
            </tr>
            <tr>
                <td>Opening Time</td>
                <td><input type="text" name="opening_time" value="<%=opening_time%>"></td>
            </tr>
            <tr>
                <td>Closing Time</td>
		<td><input type="text" name="closing_time" value="<%=closing_time%>"></td>
            </tr>
            <tr>
		<td>Closed Day</td>
		<td><input type="text" name="closed_day" value="<%=closed_day%>"></td>
            </tr>
            <tr>
		<td>Cost</td>
                <td><input type="text" name="cost" value="<%=cost%>"></td>
            </tr>
            <tr>
		<td><input type="hidden" name="flag" value="1"/></td>
            </tr>
            <tr>
		<td><input type="submit" value="Submit"></td>
            </tr>
        </table>
    </form>
    <% 
    }
    else
    {
    %>
    No record has been submitted for updating
    <% 
    }
    %>
                                                    
                                                    
                                                    
                                                    
						</div>
				</div>   
			</section>
			
			
			<!--==============================footer=================================-->
			<footer> 	 
			</footer>
		</div>
	</body>
</html>

