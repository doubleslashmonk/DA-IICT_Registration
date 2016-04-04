<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
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
              <s:if test="%{#session.StudentName!=null}">
				<li style="float: right;"><a href="Logout">Logout</a></li>
				</s:if>
            </ul>
          </div>
          <div class="content" style="text-align:left">
		<h1>Email Activation</h1><hr />
	<form>
          <label><strong>Sorry</strong>, you have provided invalid reference key for Email Activation.</label>
</form>
		  </div>
        <div class="footer">&copy; 2013 DA-IICT, Gandhinagar. </div>
        </div>
    </body>
</html>