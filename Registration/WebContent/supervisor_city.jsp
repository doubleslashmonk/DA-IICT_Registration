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
				<li><a href="Candidatelogin">Status</a></li>
				<li style="float: right;"><a href="ActorLogout">Logout</a></li>
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
	    					<li><a href="City"  class="active">City and Centre</a></li>
						<li><a href="#">Students Allocation</a></li>
	    					<li><a href="ChangePassword" style="border:none">Change Password</a></li>
					</ul>
				</div>
				<div class="menuContent">
				
					<fieldset>
	                			<legend>Details</legend>
	                                        <div class="menu" style="width:125px">
            <ul>
              <li><a href="City" class="active">City</a></li>
              <li><a href="Centre">Centre</a></li>
            </ul>
          </div>
	                                        <hr />
						<fieldset style="float:left">
						<legend>Manage Cities</legend>
						<form action="CityAction" method="post">
							
							<div class="row">
								<div class="column" style="width:100px">
									<label for="CityName">City Name</label>
								</div>
								<div class="column" style="width:200px">
									<s:textfield name="CityName"/>
								</div>
								<s:fielderror><s:param>CityName</s:param></s:fielderror>
							</div>

							<div class="row">
								<div class="column" style="width:100px">
									<label for="StateName">State Name</label>
								</div>
								
								<div class="column" style="width:200px">
									<s:textfield name="StateName"/>
								</div>
								<s:fielderror><s:param>StateName</s:param></s:fielderror>
							</div>
						<s:if test="#session.CityId!=null">
						<div style="padding-left: 175px;"><s:submit method="updateCity" value="Edit"/></div>
						</s:if>
						<s:else>
						<div style="padding-left: 175px;"><s:submit method="addCity" value="Add"/></div>
						</s:else>
							
						
						
						</form>
						</fieldset>
						<fieldset style="float:left">
							<legend>City List</legend>
							<div class="row">
							<div class="rowHeader" style="width:95px;"><label>City Name</label></div>
							<div class="rowHeader" style="width:95px;"><label>State</label></div>
							<div class="rowHeader" style="width:95px;"><label>Actions</label></div>
							</div>
							
							<s:iterator value="citylist">
							<div class="row" style="text-align:center"> 
							<div class="rowColumn-condensed" style="width:95px;padding:10px;padding-top:5px; padding-bottom:5px;"><a href="EditCity?CityId=<s:property value='CityId'/>"><s:property value="CityName"/></a></div>	
							<div class="rowColumn-condensed" style="width:95px;padding:10px;padding-top:5px; padding-bottom:5px;"><label><s:property value="StateName"/></label></div>
							<div class="rowColumn-condensed" style="width:95px;padding:10px;padding-top:5px; padding-bottom:5px;"><a href="DeleteCity?CityId=<s:property value='CityId'/>">Delete</a></div>
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