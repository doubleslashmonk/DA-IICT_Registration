<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DA-IICT M.Sc.IT Registration</title>
<link rel="shortcut icon" type='image/png' href="images/icon.png"/>
</head>
<body>
hello <s:property value="#session.StudentName"/>
<s:if test="%{#request.isapproved==false}">
your Demand draft is not approved yet.
</s:if>
<s:else>
your Demand draft is approved.
</s:else>
<s:form action="ViewProfileAction">
<s:submit label="Profile"></s:submit>
</s:form>
</body>
</html>