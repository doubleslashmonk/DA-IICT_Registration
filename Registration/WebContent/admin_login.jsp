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
            </ul>
          </div>
          <div class="content" style="text-align:left">
		<h1>Admin</h1><hr />
	<form action="ActorLogin" method="post">
          <fieldset>
            <legend>Login Details</legend>
            <div class="row">
              <div class="column" style="width:150px; padding-left:250px"><label for="EmailAddress">Email Address <span style="color:#C00">*</span></label></div>
              <div class="column">
              <s:textfield name="ActorEmailAddress"/>
              </div>
              <s:fielderror><s:param>ActorEmailAddress</s:param></s:fielderror>
            </div>
            <div class="row">
		<div class="column" style="width:150px; padding-left:250px"><label for="Password">Password <span style="color:#C00">*</span></label></div>
              <div class="column">
              	<s:password name="ActorPassword" />
                
              </div>
              <s:fielderror><s:param>ActorPassword</s:param></s:fielderror>
            </div>
          </fieldset>
<div style="padding-left: 500px"><s:submit value="log in"/></div>
</form>
		  </div>
        <div class="footer">&copy; 2013 DA-IICT, Gandhinagar. </div>
        </div>
    </body>
</html>