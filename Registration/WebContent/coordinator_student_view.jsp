<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib prefix="s" uri="/struts-tags"%>
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
					<li><a href="Coordinator" class="active">DD Approval</a></li>
    				<li><a href="ChangePassword" style="border:none">Change Password</a></li>
				</ul>
			</div>
			<div class="menuContent">
				<fieldset>
                	<legend>Details</legend>
                    <h3>Details of - Sharad Soni</h3>
                    <hr />
                    <fieldset>
                    <legend>Personal Details</legend>
                    <div class="row">
                    	<div class="column" style="width:150px">Student ID:</div>
                        <div class="column"><strong><s:property value="RegistrationId"/></strong></div>
                    </div>
                    <div class="row">
                    	<div class="column" style="width:150px">Student Name:</div>
                        <div class="column"><strong><s:property value="StudentName"/></strong></div>
                    </div>
                    <div class="row">
                    	<div class="column" style="width:150px">Gender:</div>
                        <div class="column"><s:if test="StudentGender==true">Male</s:if><s:else>Female</s:else></div>
                    </div>
                    <div class="row">
                    	<div class="column" style="width:150px">Date of Birth:</div>
                        <div class="column"><s:property value="StudentDOB"/></div>
                    </div>
                    <div class="row">
            	<div class="column" style="width:150px">Address:</div>
                <div class="column" style="width:500px">
                    <div class="row" style="padding-bottom:2px">
                        <div class="column" style="width:500px; margin-bottom:0px"><s:property value="ContactPersonName"/></div>
                    </div>
                	<div class="row" style="padding-bottom:2px">
                        <div class="column" style="width:500px; margin-bottom:0px"><s:property value="StudentAddressLine1"/></div>
                    </div>
                	<div class="row" style="padding-bottom:2px">
                        <div class="column" style="width:500px; margin-bottom:0px"><s:property value="StudentAddressLine2"/></div>
                    </div>
                	<div class="row" style="padding-bottom:2px">
                        <div class="column" style="width:200px; margin-bottom:0px"><s:property value="StudentCity"/></div>
                    </div>
					<div class="row" style="padding-bottom:2px">
                        <div class="column" style="width:200px; margin-bottom:0px"><s:property value="StudentState"/></div>
                    </div>
                	<div class="row">
                        <div class="column" style="width:200px; margin-bottom:0px"><s:property value="StudentPostalCode"/></div>
                    </div>
                </div>
                <div class="row">
                    	<div class="column" style="width:150px">Telephone No.:</div>
                        <div class="column"><s:property value="STDCode"/>-<s:property value="PhoneNumber"/></div>
                </div>
                <div class="row">
                    	<div class="column" style="width:150px">Email Address:</div>
                        <div class="column"><s:property value="StudentEmailAddress"/></div>
                </div>
            </div>    
            </fieldset>
            <fieldset>
            <legend>Bank Details</legend>
            <div class="row">
            	<div class="column" style="width:150px">Bank Name:</div>
                <div class="column"><strong><s:property value="BankName"/></strong></div>
                </div>
            <div class="row">
            	<div class="column" style="width:150px">Bank Branch:</div>
                <div class="column"><s:property value="BankBranch"/></div>
                </div>
				<div class="row">
            	<div class="column" style="width:150px">DD Number:</div>
                <div class="column"><strong><s:property value="DemandDraftNumber"/></strong></div>
                </div>
                            <div class="row">
            	<div class="column" style="width:150px">DD Date:</div>
                <div class="column"><s:property value="DemandDraftDate"/></div>
                </div>
            </fieldset>
            <s:if test="IsApproved==false"><form action="DDApprove" method="get">
          <input type="hidden" name="RegistrationId" value=<s:property value='RegistrationId' /> />
			<input type="submit" style="margin-left:350px" value="Accept DD"/>
			</form>
			</s:if>
                </fieldset>

			</div>

            </fieldset>
		</div>
        <div class="footer">&copy; 2013 DA-IICT, Gandhinagar. </div>
	</div>
</body>
</html>
