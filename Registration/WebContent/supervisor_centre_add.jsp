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
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
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
				<li><a href="Registration">Registration</a></li>
				<li><a href="Status">Status</a></li>
				<li style="float: right;"><a href="ActorLogout">Logout</a></li>
				<li style="float: right;"><a href="AdminPanel" class="active"><s:property value="#session.ActorName" /></a></li>
			</ul>
		</div>
		<div class="content" style="text-align: left">
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
				<form action="CentreAction" method="post">
					<fieldset>
						<legend>Details</legend>
						<div class="menu" style="width: 125px">
							<ul>
								<li><a href="City">City</a></li>
								<li><a href="Centre" class="active">Centre</a></li>
							</ul>
						</div>
						<hr />
						<fieldset>
							<legend>Centre Add</legend>
							<div class="row">
								<div class="column" style="width: 150px">
									<label for="CentreName">Centre Name <span
										style="color: #C00">*</span></label>
								</div>
								<div class="column" style="width: 200px">
									<s:textfield name="CentreName"/>
								</div>
							</div>
							<div class="row">
								<div class="column" style="width: 150px">
									<label>Address <span style="color: #C00">*</span></label>
								</div>
								<div class="column" style="width: 500px">
									<div class="row" style="padding-bottom: 2px">
										<div class="column" style="width: 150px">
											<label for="AddressLine1">Address Line 1:</label>
										</div>
										<div class="column" style="width: 200px;">
											<s:textfield name="AddressLine1"/>
										</div>
									</div>
									<div class="row" style="padding-bottom: 2px">
										<div class="column" style="width: 150px">
											<label for="AddressLine2">Address Line 2:</label>
										</div>
										<div class="column" style="width: 200px;">
											<s:textfield name="AddressLine2"/>
										</div>
									</div>
									<div class="row" style="padding-bottom: 2px">
										<div class="column" style="width: 150px">
											<label for="City">City:</label>
										</div>
										<div class="column" style="width: 200px;">
											<s:textfield name="CityName"/>
										</div>
									</div>
									<div class="row" style="padding-bottom: 2px">
										<div class="column" style="width: 150px">
											<label for="State">State:</label>
										</div>
										<div class="column" style="width: 200px;">
											<s:textfield name="StateName"/>
										</div>
									</div>
									<div class="row">
										<div class="column" style="width: 150px">
											<label for="PostalCode">Postal Code:</label>
										</div>
										<div class="column" style="width: 200px;">
											<s:textfield name="CentrePostalCode"/>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="column" style="width: 150px">
									<label for="ContactNumber">Contact Number <span
										style="color: #C00">*</span></label>
								</div>
								<div class="column" style="width: 200px;">
									<s:textfield name="CentreContactNumber"/>
								</div></div>
								<div class="row">
									<div class="column" style="width: 150px">
										<label for="TotalSeats">Total Seats <span
											style="color: #C00">*</span></label>
									</div>
									<div class="column" style="width: 200px">
										<s:textfield name="CentreCapacity"/>
									</div>
								</div>
						</fieldset>
						<div style="padding-left: 350px">
						<s:if test="#session.CentreId==null">
							<s:submit value="Add" method="addCentre"/>
						</s:if>
						<s:else>	
							<s:submit value="Edit" method="updateCentre"/>
						</s:else>
						</div>
						
					</fieldset>
					</form>
				</div>
			</fieldset>
		</div>
		<div class="footer">&copy; 2013 DA-IICT, Gandhinagar.</div>
	</div>
</body>
</html>
