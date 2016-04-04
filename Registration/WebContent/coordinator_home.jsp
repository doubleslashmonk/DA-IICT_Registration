<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib prefix="s"  uri="/struts-tags"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DA-IICT M.Sc.IT Registration</title>
<link rel="shortcut icon" type='image/png' href="images/icon.png"/>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<link type="text/css" href="css/jquery.ui.theme.css" rel="stylesheet" />
<link type="text/css" href="css/jquery.ui.datepicker.css" rel="stylesheet" />
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
					<li><a href="Coordinator" class="active">DD Approval</a></li>
    				<li><a href="ChangePassword" style="border:none">Change Password</a></li>
				</ul>
			</div>
			<div class="menuContent">
				<fieldset>
                	<legend>Details</legend>
                    <h3>Demand Draft Approval</h3>
                    <hr />
                    <div class="row">
                    <div class="rowHeader" style="width:100px">Student ID</div>
                    <div class="rowHeader" style="width:300px">Student Name</div>
                    <div class="rowHeader" style="width:150px">Bank Name</div>
                    <div class="rowHeader" style="width:102px">Approve</div>
                    </div>
                    <s:iterator value="registration"> 
                    <div class="row">
                    <div class="rowColumn" style="width:100px; text-align:center;border:none;border-left-width: thin;border-left-style: solid;border-left-color: #000;"><a href="StudentDetail?RegistrationId=<s:property value='RegistrationId'/>" style="text-decoration:none"><s:property value="RegistrationId"/></a></div>
                    <div class="rowColumn" style="width:300px"><s:property value="StudentName"/></div>
                    <div class="rowColumn" style="width:150px"><s:property value="BankName"/></div>
                    <div class="rowColumn" style="width:100px; text-align:center; border:none;border-right-width: thin;border-right-style: solid;border-right-color: #000;"><s:if test="IsApproved!=true"><a href="DDApprove?RegistrationId=<s:property value='RegistrationId'/>" style="text-decoration:none">Approve</a></s:if><s:else>Approved</s:else></div>
                    </div>
                    </s:iterator>
                    
                </fieldset>
			</div>
            </fieldset>
		</div>
        <div class="footer">&copy; 2013 DA-IICT, Gandhinagar. </div>
	</div>
</body>
</html>