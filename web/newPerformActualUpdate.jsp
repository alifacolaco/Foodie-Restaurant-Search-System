<%-- 
    Document   : newPerformActualUpdate
    Created on : 13 Apr, 2016, 10:58:19 PM
    Author     : ANISH   BHARNE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<html lang="en">
<head>
    <title>Perform Actual Update</title>
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
                
                table{
                    height:30%;
                    width:100%;
                    border: 1px solid #ddd;
                    text-align: left;
                    color:black;   
                }
                
                td{
                    font-size: 20px;
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
					<h3 class="h3-line top-1">Updated:</h3>
						<div class="box-3">
						
                                                    <form method="post">
                                                        <% 
                                                            int upRes=0;    
                                                            String flag="";
                                                            if(request.getParameter("flag")!=null)
                                                		flag=request.getParameter("flag");
                                                                String restaurant_id=request.getParameter("restaurant_id");
                                                                String name=request.getParameter("name");
                                                                String phone_no=request.getParameter("phone_no");
                                                                String street_no=request.getParameter("street_no");
                                                                String city=request.getParameter("city");
                                                                String landmark=request.getParameter("landmark");
                                                                String opening_time=request.getParameter("opening_time");
                                                                String closing_time=request.getParameter("closing_time");
                                                                String closed_day=request.getParameter("closed_day");
                                                                String cost=request.getParameter("cost");
						
                                                                if(flag.equals("1")) {
                                                                    Connection conn = null;
                                                                    Statement stmt = null;
                                                                    try {
                                                                        Class.forName("org.gjt.mm.mysql.Driver");
                                                                        String url="jdbc:mysql://localhost:3306/restaurant_project";
                                                                        String user="root";
                                                                        String password="";
                                                                        conn = DriverManager.getConnection(url,user,password);
                                                                        stmt = conn.createStatement();
                                                                        String sqlSt="update restaurant set name='"+name+"'," + "phone_no='"+phone_no+"'," + "street_no='"+street_no+"'," + "city='"+city+"'," + "landmark='"+landmark+"'," + "opening_time='"+opening_time+"'," + "closing_time='"+closing_time+"'," + "closed_day='"+closed_day+"'," + "cost='"+cost+"' where restaurant_id ="+restaurant_id+"";
                                                                        upRes=stmt.executeUpdate(sqlSt);
                                                    		%>	
                                                                <jsp:forward page="newPerformActualUpdate.jsp">
                                                                    <jsp:param name="flag" value="0"/>
                                                                    <jsp:param name="upRes" value="<%=upRes%>"/>
                                                                </jsp:forward>
		
                                                                <% 
                                                                    }
                                                                    catch(Exception e){
                                                                %>	
                                                                <%=e%>	
                                                                <%
                                                                    }
                                                                finally {
                                                                    if(stmt != null)stmt.close();
                                                                    if(conn != null) conn.close();
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    if(request.getParameter("upRes")!=null) {
                                                        		upRes=Integer.parseInt(request.getParameter("upRes"));
                                                                    if(upRes>0) {
                                                                %>
                                                                <h4>The Existing record has been successfully updated to</h4> <br><br>
                                                                <table border="1">
                                                                    <tr>
                                                                        <td><b>Restaurant Id</b></td>
                                                			<td><b>Restaurant Name</b></td>
                                                    			<td><b>Phone No</b></td>
                                                			<td><b>Street No</b></td>
                                                    			<td><b>City</b></td>
                                                			<td><b>Landmark</b></td>
                                                			<td><b>Opening Time</b></td>
                                                			<td><b>Closing Time</b></td>
                                                    			<td><b>Closed Day</b></td>
                                                			<td><b>Cost</b></td>
                                                                    </tr>
                                                                    <tr>
                                                        		<td><%=restaurant_id%></td>
                                                        		<td><%=name%></td>	
                                                            		<td><%=phone_no%></td>
                                                        		<td><%=street_no%></td>
                                                        		<td><%=city%></td>	
                                                            		<td><%=landmark%></td>
                                                        		<td><%=opening_time%></td>
                                                        		<td><%=closing_time%></td>	
                                                        		<td><%=closed_day%></td>
                                                        		<td><%=cost%></td>
                                                                    </tr>
                                                                </table>
                                                                <%
                                                                }
                                                                else
                                                                {
                                                                %>
                                                		The existing record has not been updated
                                                                <%
                                                                    }
                                                                    }
                                                                }
                                                                %>
                                                    </form>
						</div>
				</div>   
			</section>
			
			
			<!--==============================footer=================================-->
			<footer> 	 
			</footer>
		</div>
	</body>
</html>

