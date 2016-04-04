<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%
String resend=(String)session.getAttribute("resend");
session.removeAttribute("resend");
%>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DA-IICT M.Sc.IT Registration</title>
<link rel="shortcut icon" type='image/png' href="images/icon.png"/>
	        <link href="css/layout.css" rel="stylesheet" type="text/css" />
	        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
	</head>
    	<body>
        	<div class="container">
			<div class="header">
		        	<div class="logo"></div>
			        <div class="Info"></div>
          		</div>
          		<div class="menu">
            			<ul>
				        <li><a href="index.jsp">Home</a></li>
              				<li><a href="Registration" >Registration</a></li>
              				<li><a href="Status" class="active">Status</a></li>
              				<li style="float: right;"><a href="Logout">Logout</a></li>
            			</ul>
          		</div>
			<div class="content" style="text-align:left">
			<%if(resend!=null) out.print("<div class='result'>"+resend+"</div>"); %>
				<h2>Welcome, <s:property value="#session.StudentName"/></h2><hr />
				<fieldset>
					<legend>Application Details</legend>
						
					<div class="r	ow">
						<div class="rowHeader" style="padding-right:10px">Sr. No</div>
						<div class="rowHeader" style="width:760px; text-align:center; padding-right:0px">Application Details</div>
						<div class="rowHeader" style="width:100px; text-align:center; padding-right:0px">Status</div>		
					</div>
					<div class="row">
						<div class="rowColumn" style="text-align: center;padding-bottom: 5px;height: 15px;">1</div>
						<div class="rowColumn" style="width:760px; text-align:center;padding-bottom: 5px;height: 15px;"><s:if test="#session.isEmailVerified==true">Your Email ID Is Verified </s:if><s:else>Your Email ID is not verified - <a href="Resend">resend verification link</a></s:else></div>
						<div class="rowColumn" style="width:100px; text-align:center;padding-bottom: 5px;height: 15px;"><s:if test="#session.isEmailVerified==true">Verified</s:if><s:else>Pending</s:else></div>
					</div>
					<div class="row">
					<div class="rowColumn" style="text-align: center">2</div>
						<div class="rowColumn" style="width:760px; text-align:center;padding-bottom: 5px;height: 15px;">
						<s:if test="#session.isapproved==true">Your Demand Draft Received</s:if>
						<s:else>Your Demand Draft Is Not Received Yet</s:else>
						</div>
						<div class="rowColumn" style="width:100px; text-align:center;padding-bottom: 5px;height: 15px;">1</div>
					</div>
				
				</fieldset>
			</div>
        		<div class="footer">&copy; 2013 DA-IICT, Gandhinagar. </div>
        	</div>
	</body>
</html>
