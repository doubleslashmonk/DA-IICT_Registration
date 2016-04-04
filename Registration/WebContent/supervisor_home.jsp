

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
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
				<li><a href="Status">Status</a></li>
				<li style="float:right;"><a href="ActorLogout">Logout</a></li>
				<li style="float:right;"><a href="AdminPanel" class="active"><s:property value="#session.ActorName"/></a></li>
			</ul>
		</div>
		<div class="content" style="text-align:left">
			<h2>Supervisor Panel</h2>
			<hr />
            <fieldset>
            <legend>Supervisor</legend>
			<div class="sideMenu">
				<ul>
					<li><a href="Supervisor" class="active">Process</a></li>
    					<li><a href="City">City and Centre</a></li>
	    				<li><a href="#">Students Allocation</a></li>
    					<li><a href="ChangePassword" style="border:none">Change Password</a></li>
				</ul>
			</div>
			<div class="menuContent">
				<fieldset>
                	<legend>Details</legend>
                                        <h3>Process</h3>
                                        <hr />
                    <div class="row">
                    	<div class="column">Registration Start Date And Time
         				</div>
                        </div>
						<div class="row">
                    	<div class="column">Registration End Date And Time
                        </div>
                        </div>
                </fieldset>
			</div>
                                    <div style="padding-left: 520px"><input type="submit" value="Process"/></div>
            </fieldset>
		</div>
        <div class="footer">&copy; 2013 DA-IICT, Gandhinagar. </div>
	</div>
</body>
</html>