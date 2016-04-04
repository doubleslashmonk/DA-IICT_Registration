<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib prefix="s" uri="/struts-tags"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DA-IICT M.Sc.IT Registration</title>
<link rel="shortcut icon" type='image/png' href="images/icon.png"/>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
</head>

<body>
<div class="container">
  <div class="header">
		<div class="logo"></div>
        <div class="Info"></div>
	</div>
	<div class="menu">
		<ul>
			<li><a href="index.jsp" class="active">Home</a></li>
			<li><a href="Registration">Registration</a></li>
			<li><a href="CandidateLogin">Status</a></li>
	    </ul>
	</div>
	<div class="content">
    <h2 style="color:#183152">Thank you <s:property value="StudentName"/> for registering in M.Sc. IT Program</h2>
    <small>Please verify your Email Address for further process.</small>
	</div>
	<div class="footer">&copy; 2013 DA-IICT, Gandhinagar.
	</div>
</div>
</body>
</html>
