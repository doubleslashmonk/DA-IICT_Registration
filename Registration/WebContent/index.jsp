<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
			<li><a href="Status">Status</a></li>
			<s:if test="%{#session.StudentName!=null}">
				<li style="float: right;"><a href="Logout">Logout</a></li>
			</s:if>
			<s:if test="%{#session.ActorName!=null}">
					<li style="float: right;"><a href="ActorLogout">Logout</a></li>
					<li style="float: right;"><a href="AdminPanel"><s:property value="#session.ActorName"></s:property></a></li>
			</s:if>
			
	    </ul>
	</div>
	<div class="content">
    <h1>M.Sc. IT Overview</h1><hr />
    <p>Master of Science (Information Technology) is an intensive two year program designed for students who wish to pursue a professional career in Information Technology. At the end of this program, the students are trained in three important and complementary skills - a sound theoretical foundation; an ability to analyze, conceptualize and design systems; and fluency with modern software design and development tools. With these abilities, a post-graduate of this program will be able to build a satisfying career in the challenging field of Information Technology - as software engineer, analyst and system designer. The course has been carefully designed to guide the students from basic concepts to current practices in industry. Also, the students are required to carry out a summer internship of six-eight weeks after their first year and an industrial project internship in the last semester of the program, to make them aware of the current practices in the industry. The course is open to candidates who have obtained a degree in an engineering or science discipline with any computer science course in it.</p>
	</div>
	<div class="footer">&copy; 2013 DA-IICT, Gandhinagar.
	</div>
</div>
</body>
</html>