<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib prefix="s" uri="/struts-tags"%>
<% String resend=(String)session.getAttribute("changepass");
session.removeAttribute("changepass");%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
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
				<li><a href="index.html">Home</a></li>
				<li><a href="Registration" >Registration</a></li>
				<li><a href="CandidateLogin">Status</a></li>
				<li style="float:right;"><a href="ActorLogout">Logout</a></li>
				<li style="float:right;"><a href="AdminPanel" class="active"><s:property value="#session.ActorName"/></a></li>
			</ul>
		</div>
		<div class="content" style="text-align:left">
			<h2>Co-ordinator Panel</h2>
			<hr />
            <fieldset>
            <legend>Co-ordinator</legend>
			<div class="sideMenu">
				<ul>
					<li><a href="Coordinator">DD Approval</a></li>
	    			<li><a href="ChangePassword" style="border:none;border-left-width: thin;border-left-style: solid;border-left-color: #000;" class="active">Change Password</a></li>
				</ul>
			</div>
			<form action="UpdatePassword" method="post">
				<div class="menuContent">
					<%if(resend!=null) out.print("<div class='result'>"+resend+"</div>"); %>
						<fieldset>
							<legend>Details</legend>
							<h3>Change Password</h3>
							<hr />
							<div class="row">
								<div class="column"
									style="width: 200px; padding-left: 50px; text-align: left">
									<label for="Password">Current Password <span
										style="color: #C00">*</span></label>
								</div>
								<div class="column">
									<s:password name="ActorPassword" />
								</div>
								<s:fielderror>
									<s:param>ActorPassword</s:param>
								</s:fielderror>
							</div>
							<div class="row">
								<div class="column"
									style="width: 200px; padding-left: 50px; text-align: left">
									<label for="NewPassword">New Password <span
										style="color: #C00">*</span></label>
								</div>
								<div class="column">
									<s:password name="ActorNewPassword" />
								</div>
								<s:fielderror>
									<s:param>ActorNewPassword</s:param>
								</s:fielderror>
							</div>
							<div class="row">
								<div class="column"
									style="width: 200px; padding-left: 50px; text-align: left">
									<label for="ConfirmNewPassword">Confirm New Password <span
										style="color: #C00">*</span></label>
								</div>
								<div class="column">
									<s:password name="ActorConfirmPassword" />
								</div>
							</div>
						</fieldset>
				</div>
				<div style="padding-left: 495px">
					<input type="submit" value="Change Password" />
				</div>
				</form> 
	 </fieldset>
		</div>
        <div class="footer">&copy; 2013 DA-IICT, Gandhinagar. </div>
	</div>
</body>
</html>
