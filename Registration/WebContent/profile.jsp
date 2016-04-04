<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr><td>Registration Id:</td><td><s:property value="RegistrationId"/></td></tr>
<tr><td>First Name:</td><td><s:property value="StudentFirstName"/></td></tr>
<tr><td>Middle Name:</td><td><s:property value="StudentMiddleName"/></td></tr>
<tr><td>Last Name:</td><td><s:property value="StudentLastName"/></td></tr>
<tr><td>Guardian Name:</td><td><s:property value="StudentGuardianName"/></td></tr>
<tr><td>Gender:</td><td><s:property value="StudentGender"/></td></tr>
<tr><td>Date Of Birth:</td><td><s:property value="StudentDOB"/></td></tr>
<tr><td>Contact Person Name:</td><td><s:property value="ContactPersonName"/></td></tr>
<tr><td>AddressLine1:</td><td><s:property value="StudentAddressLine1"/></td></tr>
<tr><td>AddressLine2:</td><td><s:property value="StudentAddressLine2"/></td></tr>
<tr><td>City:</td><td><s:property value="StudentCity"/></td></tr>
<tr><td>State:</td><td><s:property value="StudentState"/></td></tr>
<tr><td>Postal Code:</td><td><s:property value="StudentPostalCode"/></td></tr>
<tr><td>STD Code:</td><td><s:property value="STDCode"/></td></tr>
<tr><td>Phone Number:</td><td><s:property value="PhoneNumber"/></td></tr>
<tr><td>Mobile Number:</td><td><s:property value="MobileNumber"/></td></tr>
<tr><td>Email Id:</td><td><s:property value="StudentEmailAddress"/></td></tr>
<tr><td>City Preference 1:</td><td><s:property value="CityPreference1"/></td></tr>
<tr><td>City Preference 2:</td><td><s:property value="CityPreference2"/></td></tr>
<tr><td>City Preference 3:</td><td><s:property value="CityPreference3"/></td></tr>

</table>
</body>
</html>