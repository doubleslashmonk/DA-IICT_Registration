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
          	
    		<li><a href="City">City and Centre</a></li>
	    	<li><a href="#">Students Allocation</a></li>
    		<li><a href="ChangePassword" style="border:none">Change Password</a></li>
        </ul>
      </div>
      <div class="menuContent">
        <fieldset>
          <legend>Details</legend>
          <div class="menu" style="width:125px">
            <ul>
              <li><a href="City">City</a></li>
              <li><a href="Centre" class="active">Centre</a></li>
            </ul>
          </div>
          <hr />
          <a href="NewCentre" style="text-decoration:none">+ Add New</a>
          <fieldset>
            <legend>Centre List</legend>
            <div class="row" style="font-size: 14px;">
              <div class="rowHeader-condensed" style="width:150px;">
                <label>Centre Name</label>
              </div>
              <div class="rowHeader-condensed" style="width:100px;">
                <label>City</label>
              </div>
              <div class="rowHeader-condensed" style="width:50px;">
                <label>State</label>
              </div>
              <div class="rowHeader-condensed" style="width:70px;">
                <label>Capacity</label>
              </div>
              <div class="rowHeader-condensed" style="width:95px;">
                <label>Rem. Capacity</label>
              </div>
              <div class="rowHeader-condensed" style="width:115px;">
                <label>Phone Number</label>
              </div>
              <div class="rowHeader-condensed" style="width:50px;">
                <label>Action</label>
              </div>
            </div>
            <s:iterator value="centrelist">
            <div class="row">
              <div class="rowColumn-condensed" style="width:150px;"><a href="ViewCentre?CentreId=<s:property value="CentreId"/>"><s:property value="CentreName"/></a></div>
              <div class="rowColumn-condensed" style="width:100px;">
                <label>Admedabad</label>
              </div>
              <div class="rowColumn-condensed" style="width:50px;">
                <label>Gujarat</label>
              </div>
              <div class="rowColumn-condensed" style="width:70px; text-align:center;"><s:property value="CentreCapacity"/></div>
              <div class="rowColumn-condensed" style="width:95px; text-align:center"><s:property value="CentreRemainingCapacity"/></div>
              <div class="rowColumn-condensed" style="width:115px;"><s:property value="CentreContactNumber"/></div>
              <div class="rowColumn-condensed" style="width:50px;"><a href="DeleteCentre?CentreId=<s:property value='CentreId'/>">Delete</a></div>
            </div>
            </s:iterator>
            </fieldset>
        </fieldset>
      </div>
    </fieldset>
  </div>
  <div class="footer">&copy; 2013 DA-IICT, Gandhinagar. </div>
</div>
</body>
</html>
