<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
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
				<li><a href="Registration" class="active">Registration</a></li>
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
		<div class="content" style="text-align: left">
			<span style="color: #C00">*</span> Fields are mandatory
			<form action="RegisterAction" method="post"
				enctype="multipart/form-data">
				<fieldset>
					<legend>Personal Details</legend>
					<div class="row">
						<div class="column">
							<label for="StudentName">Name (as it appears in Board
								Certificate) <span style="color: #C00">*</span>
							</label>
						</div>
						<div class="column" style="width: 205px;">
							<s:textfield name="StudentName" />
						</div>
						<s:fielderror cssClass="error">
							<s:param>StudentName</s:param>
						</s:fielderror>
					</div>
					<div class="row">
						<div class="column">
							<label for="StudentGuardianName">Guardian Name <span
								style="color: #C00">*</span></label>
						</div>
						<div class="column" style="width: 205px;">
							<s:textfield name="StudentGuardianName" />
						</div>
						<s:fielderror cssClass="error">
							<s:param>StudentGuardianName</s:param>
						</s:fielderror>
					</div>
					<div class="row">
						<div class="column">
							<label>Gender <span style="color: #C00">*</span></label>
						</div>
						<div class="column">
							<s:radio list="#{'true':'Male','false':'Female'}"
								name="StudentGender" value="StudentGender" />
						</div>
						<s:fielderror cssClass="error">
							<s:param>StudentGender</s:param>
						</s:fielderror>
					</div>
					<div class="row">
						<div class="column">
							<label>Date of Birth <span style="color: #C00">*</span></label>
						</div>
						<div class="column" style="width: 308px;">
							<select name="DOBDate" style="width: 100px">
								<option value="0">Date</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select> <select name="DOBMonth" style="width: 100px">
								<option value="0">Month</option>
								<option value="1">January</option>
								<option value="2">February</option>
								<option value="3">March</option>
								<option value="4">April</option>
								<option value="5">May</option>
								<option value="6">June</option>
								<option value="7">July</option>
								<option value="8">August</option>
								<option value="9">September</option>
								<option value="10">October</option>
								<option value="11">November</option>
								<option value="12">December</option>
							</select> <select name="DOBYear" style="width: 100px">
								<option value="0">Year</option>
								<option value="1995">1995</option>
								<option value="1994">1994</option>
								<option value="1993">1993</option>
								<option value="1992">1992</option>
								<option value="1991">1991</option>
								<option value="1990">1990</option>
								<option value="1989">1989</option>
								<option value="1988">1988</option>
								<option value="1987">1987</option>
								<option value="1986">1986</option>
								<option value="1985">1985</option>
								<option value="1984">1984</option>
								<option value="1983">1983</option>
								<option value="1982">1982</option>
								<option value="1981">1981</option>
								<option value="1980">1980</option>
								<option value="1979">1979</option>
								<option value="1978">1978</option>
								<option value="1977">1977</option>
								<option value="1976">1976</option>
								<option value="1975">1975</option>
								<option value="1974">1974</option>
								<option value="1973">1973</option>
								<option value="1972">1972</option>
								<option value="1971">1971</option>
								<option value="1970">1970</option>
								<option value="1969">1969</option>
								<option value="1968">1968</option>
								<option value="1967">1967</option>
								<option value="1966">1966</option>
								<option value="1965">1965</option>
								<option value="1964">1964</option>
								<option value="1963">1963</option>
								<option value="1962">1962</option>
								<option value="1961">1961</option>
								<option value="1960">1960</option>
								<option value="1959">1959</option>
								<option value="1958">1958</option>
								<option value="1957">1957</option>
								<option value="1956">1956</option>
								<option value="1955">1955</option>
								<option value="1954">1954</option>
								<option value="1953">1953</option>
								<option value="1952">1952</option>
								<option value="1951">1951</option>
								<option value="1950">1950</option>
							</select>
						</div>
						<s:fielderror cssClass="error">
							<s:param>DOBDate</s:param>
						</s:fielderror>
					</div>
					<div class="row">
						<div class="column">
							<label>Address <span style="color: #C00">*</span></label>
						</div>
						<div class="column">
							<div class="row" style="width: 600px;">
								<div class="column" style="width: 125px">
									<label for="ContactPersonName">Contact Person:</label>
								</div>
								<div class="column" style="width: 205px">
									<s:textfield name="ContactPersonName" />
								</div>
								<s:fielderror cssClass="error">
									<s:param>ContactPersonName</s:param>
								</s:fielderror>
							</div>
							<div class="row" style="width: 600px;">
								<div class="column" style="width: 125px">
									<label for="StudentAddressLine1">Address Line 1:</label>
								</div>
								<div class="column" style="width: 205px">
									<s:textfield name="StudentAddressLine1" />
								</div>
								<s:fielderror cssClass="error">
									<s:param>StudentAddressLine1</s:param>
								</s:fielderror>
							</div>
							<div class="row" style="width: 600px;">
								<div class="column" style="width: 125px">
									<label for="StudentAddressLine2">Address Line 2:</label>
								</div>
								<div class="column" style="width: 205px">
									<s:textfield name="StudentAddressLine2" />
								</div>
							</div>
							<div class="row" style="width: 600px;">
								<div class="column" style="width: 125px">
									<label for="StudentCity">City:</label>
								</div>
								<div class="column" style="width: 205px">
									<s:textfield name="StudentCity" />
								</div>
								<s:fielderror cssClass="error">
									<s:param>StudentCity</s:param>
								</s:fielderror>
							</div>
							<div class="row" style="width: 600px;">
								<div class="column" style="width: 125px">
									<label for="StudentState">State:</label>
								</div>
								<div class="column" style="width: 150px">
									<select name="StudentState" style="width: 200px"
										id="StudentState">
										<option value="0">State</option>
										<option value="1">Andaman Nicobar</option>
										<option value="2">Andhra Pradesh</option>
										<option value="3">Arunachal Pradesh</option>
										<option value="4">Assam</option>
										<option value="5">Bihar</option>
										<option value="6">Chandigarh</option>
										<option value="7">Chhattisgarh</option>
										<option value="8">Dadra &amp; Nagar Haveli</option>
										<option value="9">Daman &amp; Diu</option>
										<option value="10">Delhi</option>
										<option value="11">Goa</option>
										<option value="12">Gujarat</option>
										<option value="13">Haryana</option>
										<option value="14">Himachal Pradesh</option>
										<option value="15">Jammu &amp; Kashmir</option>
										<option value="16">Jharkhand</option>
										<option value="17">Karnataka</option>
										<option value="18">Kerala</option>
										<option value="19">Lakshadweep</option>
										<option value="20">Madhya Pradesh</option>
										<option value="21">Maharashtra</option>
										<option value="22">Manipur</option>
										<option value="23">Meghalaya</option>
										<option value="24">Mizoram</option>
										<option value="25">Nagaland</option>
										<option value="26">Odisha</option>
										<option value="27">Pondicherry</option>
										<option value="28">Punjab</option>
										<option value="29">Rajasthan</option>
										<option value="30">Sikkim</option>
										<option value="31">Tamil Nadu</option>
										<option value="32">Tripura</option>
										<option value="33">Uttar Pradesh</option>
										<option value="34">Uttaranchal</option>
										<option value="35">West Bengal</option>
									</select>
								</div>
								<s:fielderror cssClass="error">
									<s:param>StudentState</s:param>
								</s:fielderror>
							</div>
							<div class="row" style="width: 600px;">
								<div class="column" style="width: 125px">
									<label for="StudentPostalCode">Postal Code:</label>
								</div>
								<div class="column" style="width: 205px">
									<s:textfield name="StudentPostalCode" />
								</div>
								<s:fielderror cssClass="error">
									<s:param>StudentPostalCode</s:param>
								</s:fielderror>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="column">
							<label>Telephone Number:</label>
						</div>
						<div class="column" style="width: 540px;">
							<label for="STDCode">STD Code:</label>
							<s:textfield name="STDCode" cssStyle="width:50px" />
							<label for="PhoneNumber">Phone:</label>
							<s:textfield name="PhoneNumber" cssStyle="width:115px" />
							<s:fielderror cssClass="error"
								cssStyle="float:right;margin-top:0px;">
								<s:param>PhoneNumber</s:param>
							</s:fielderror>
						</div>
					</div>
					<div class="row">
						<div class="column">
							<label for="MobileNumber">Mobile Number <span
								style="color: #C00">*</span></label>
						</div>
						<div class="column" style="width: 235px">
							+91
							<s:textfield name="MobileNumber" />
						</div>
						<s:fielderror cssClass="error">
							<s:param>MobileNumber</s:param>
						</s:fielderror>
					</div>
					<div class="row">
						<div class="column">
							<label for="StudentEmailAddress">Email Address <span
								style="color: #C00">*</span></label>
						</div>
						<div class="column" style="width: 205px">
							<s:textfield name="StudentEmailAddress" />
						</div>
						<s:fielderror cssClass="error">
							<s:param>StudentEmailAddress</s:param>
						</s:fielderror>
					</div>
				</fieldset>
				<fieldset>
					<legend>Details of qualifying degree obtained</legend>
					<div class="row">
						<div class="column">
							<label for="DegreeName">Degree <span style="color: #C00">*</span></label>
						</div>
						<div class="column">
							<s:textfield name="degree.DegreeName" />
							
						</div>
					</div>
					<div class="row">
						<div class="column">
							<label for="Discipline">Discipline <span
								style="color: #C00">*</span></label>
						</div>
						<div class="column">
						<s:textfield name="degree.Discipline" />
							
						</div>
					</div>
					<div class="row">
						<div class="column">
							<label for="University">University/Institute <span
								style="color: #C00">*</span></label>
						</div>
						<div class="column">
							<s:textfield name="degree.University" />
						</div>
					</div>
					<div class="row">
						<div class="column">
							<label>Month &amp; Year (Obtained/Expected) <span
								style="color: #C00">*</span></label>
						</div>
						<div class="column">
							<select style="width: 100px" name="degree.DegreeMonth" id="DegreeMonth">
								<option value="0">Month</option>
								<option value="1">January</option>
								<option value="2">February</option>
								<option value="3">March</option>
								<option value="4">April</option>
								<option value="5">May</option>
								<option value="6">June</option>
								<option value="7">July</option>
								<option value="8">August</option>
								<option value="9">September</option>
								<option value="10">October</option>
								<option value="11">November</option>
								<option value="12">December</option>
							</select> <select style="width: 100px" name="degree.DegreeYear" id="DegreeYear">
								<option value="0">Year</option>
								<option value="2013">2013</option>
								<option value="2012">2012</option>
								<option value="2011">2011</option>
								<option value="2010">2010</option>
								<option value="2009">2009</option>
								<option value="2008">2008</option>
								<option value="2007">2007</option>
								<option value="2006">2006</option>
								<option value="2005">2005</option>
								<option value="2004">2004</option>
								<option value="2003">2003</option>
								<option value="2002">2002</option>
								<option value="2001">2001</option>
								<option value="2000">2000</option>
								<option value="1999">1999</option>
								<option value="1998">1998</option>
								<option value="1997">1997</option>
								<option value="1996">1996</option>
								<option value="1995">1995</option>
								<option value="1994">1994</option>
								<option value="1993">1993</option>
								<option value="1992">1992</option>
								<option value="1991">1991</option>
								<option value="1990">1990</option>
								<option value="1989">1989</option>
								<option value="1988">1988</option>
								<option value="1987">1987</option>
								<option value="1986">1986</option>
								<option value="1985">1985</option>
								<option value="1984">1984</option>
								<option value="1983">1983</option>
								<option value="1982">1982</option>
								<option value="1981">1981</option>
								<option value="1980">1980</option>
								<option value="1979">1979</option>
								<option value="1978">1978</option>
								<option value="1977">1977</option>
								<option value="1976">1976</option>
								<option value="1975">1975</option>
								<option value="1974">1974</option>
								<option value="1973">1973</option>
								<option value="1972">1972</option>
								<option value="1971">1971</option>
								<option value="1970">1970</option>
								<option value="1969">1969</option>
								<option value="1968">1968</option>
								<option value="1967">1967</option>
								<option value="1966">1966</option>
								<option value="1965">1965</option>
								<option value="1964">1964</option>
								<option value="1963">1963</option>
								<option value="1962">1962</option>
								<option value="1961">1961</option>
								<option value="1960">1960</option>
								<option value="1959">1959</option>
								<option value="1958">1958</option>
								<option value="1957">1957</option>
								<option value="1956">1956</option>
								<option value="1955">1955</option>
								<option value="1954">1954</option>
								<option value="1953">1953</option>
								<option value="1952">1952</option>
								<option value="1951">1951</option>
								<option value="1950">1950</option>
							</select>
						</div>
					</div>
				</fieldset>
<fieldset>
        <legend>
        <label>Details of additional degree(s), if any</label>
        </legend>
        <div class="row"  style="margin-left:auto;margin-right:auto; width:910px">
          <div class="rowHeader" style="width:200px;">
            <label style="text-align:center;">Degree</label>
          </div>
          <div class="rowHeader" style="width:200px;">
            <label>Discipline</label>
          </div>
          <div class="rowHeader" style="width:175px;">
            <label>University/Institute</label>
          </div>
          <div class="rowHeader" style="width:255px;">
            <label>Month & Year Obtained/Expected</label>
          </div>
        <div class="row">
          <div class="rowColumn" style="width:200px;border-left-width:thin; border-left-style: solid; border-left-color: #000;">
          <s:textfield name="degree1.DegreeName" cssStyle="width:190px"/>
          </div>
          <div class="rowColumn" style="width:200px;">
          <s:textfield name="degree1.Discipline" cssStyle="width:190px"/>
          </div>
          <div class="rowColumn">
          <s:textfield name="degree1.University" cssStyle="width:165px"/>
          </div>
          <div class="rowColumn" style="border-right-width:thin; border-right-style: solid; border-right-color: #000;">
            <select style="width:146px" name="degree1.DegreeMonth" id="DegreeMonth">
            <option value="0">Month</option>
            <option value="1">January</option>
            <option value="2">February</option>
            <option value="3">March</option>
            <option value="4">April</option>
            <option value="5">May</option>
            <option value="6">June</option>
            <option value="7">July</option>
            <option value="8">August</option>
            <option value="9">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
            </select>
            <select style="width:100px" name="degree1.DegreeYear" id="DegreeYear">
            <option value="0">Year</option>
            <option value="2013">2013</option>
            <option value="2012">2012</option>
            <option value="2011">2011</option>
            <option value="2010">2010</option>
            <option value="2009">2009</option>
            <option value="2008">2008</option>
            <option value="2007">2007</option>
            <option value="2006">2006</option>
            <option value="2005">2005</option>
            <option value="2004">2004</option>
            <option value="2003">2003</option>
            <option value="2002">2002</option>
            <option value="2001">2001</option>
            <option value="2000">2000</option>
            <option value="1999">1999</option>
            <option value="1998">1998</option>
            <option value="1997">1997</option>
            <option value="1996">1996</option>
            <option value="1995">1995</option>
            <option value="1994">1994</option>
            <option value="1993">1993</option>
            <option value="1992">1992</option>
            <option value="1991">1991</option>
            <option value="1990">1990</option>
            <option value="1989">1989</option>
            <option value="1988">1988</option>
            <option value="1987">1987</option>
            <option value="1986">1986</option>
            <option value="1985">1985</option>
            <option value="1984">1984</option>
            <option value="1983">1983</option>
            <option value="1982">1982</option>
            <option value="1981">1981</option>
            <option value="1980">1980</option>
            <option value="1979">1979</option>
            <option value="1978">1978</option>
            <option value="1977">1977</option>
            <option value="1976">1976</option>
            <option value="1975">1975</option>
            <option value="1974">1974</option>
            <option value="1973">1973</option>
            <option value="1972">1972</option>
            <option value="1971">1971</option>
            <option value="1970">1970</option>
            <option value="1969">1969</option>
            <option value="1968">1968</option>
            <option value="1967">1967</option>
            <option value="1966">1966</option>
            <option value="1965">1965</option>
            <option value="1964">1964</option>
            <option value="1963">1963</option>
            <option value="1962">1962</option>
            <option value="1961">1961</option>
            <option value="1960">1960</option>
            <option value="1959">1959</option>
            <option value="1958">1958</option>
            <option value="1957">1957</option>
            <option value="1956">1956</option>
            <option value="1955">1955</option>
            <option value="1954">1954</option>
            <option value="1953">1953</option>
            <option value="1952">1952</option>
            <option value="1951">1951</option>
            <option value="1950">1950</option>
            </select>
          </div>
          </div>
          <div class="row">
            <div class="rowColumn" style="width:200px;border-left-width:thin; border-left-style: solid; border-left-color: #000;border-bottom-width:thin; border-bottom-style: solid; border-bottom-color: #000;">
            <s:textfield name="degree2.DegreeName" cssStyle="width:190px"/>
            </div>
            <div class="rowColumn" style="width:200px;border-bottom-width:thin; border-bottom-style: solid; border-bottom-color: #000;">
            <s:textfield name="degree2.Discipline" cssStyle="width:190px"/>
              
            </div>
            <div class="rowColumn" style="border-bottom-width:thin; border-bottom-style: solid; border-bottom-color: #000;">
                        <s:textfield name="degree2.University" cssStyle="width:165px"/>
            </div>
            <div class="rowColumn" style="border-bottom-width:thin; border-bottom-style: solid; border-bottom-color: #000;border-right-width:thin; border-right-style: solid; border-right-color: #000;">
              <select style="width:146px" name="degree2.DegreeMonth" id="DegreeMonth">
              <option value="0">Month</option>
              <option value="1">January</option>
              <option value="2">February</option>
              <option value="4">April</option>
              <option value="3">March</option>
              <option value="5">May</option>
              <option value="6">June</option>
              <option value="7">July</option>
              <option value="8">August</option>
              <option value="9">September</option>
              <option value="10">October</option>
              <option value="11">November</option>
              <option value="12">December</option>
              </select>
              <select style="width:100px" name="degree2.DegreeYear" id="DegreeYear">
              <option value="0">Year</option>
              <option value="2013">2013</option>
              <option value="2012">2012</option>
              <option value="2011">2011</option>
              <option value="2010">2010</option>
              <option value="2009">2009</option>
              <option value="2008">2008</option>
              <option value="2007">2007</option>
              <option value="2006">2006</option>
              <option value="2005">2005</option>
              <option value="2004">2004</option>
              <option value="2003">2003</option>
              <option value="2002">2002</option>
              <option value="2001">2001</option>
              <option value="2000">2000</option>
              <option value="1999">1999</option>
              <option value="1998">1998</option>
              <option value="1997">1997</option>
              <option value="1996">1996</option>
              <option value="1995">1995</option>
              <option value="1994">1994</option>
              <option value="1993">1993</option>
              <option value="1992">1992</option>
              <option value="1991">1991</option>
              <option value="1990">1990</option>
              <option value="1989">1989</option>
              <option value="1988">1988</option>
              <option value="1987">1987</option>
              <option value="1986">1986</option>
              <option value="1985">1985</option>
              <option value="1984">1984</option>
              <option value="1983">1983</option>
              <option value="1982">1982</option>
              <option value="1981">1981</option>
              <option value="1980">1980</option>
              <option value="1979">1979</option>
              <option value="1978">1978</option>
              <option value="1977">1977</option>
              <option value="1976">1976</option>
              <option value="1975">1975</option>
              <option value="1974">1974</option>
              <option value="1973">1973</option>
              <option value="1972">1972</option>
              <option value="1971">1971</option>
              <option value="1970">1970</option>
              <option value="1969">1969</option>
              <option value="1968">1968</option>
              <option value="1967">1967</option>
              <option value="1966">1966</option>
              <option value="1965">1965</option>
              <option value="1964">1964</option>
              <option value="1963">1963</option>
              <option value="1962">1962</option>
              <option value="1961">1961</option>
              <option value="1960">1960</option>
              <option value="1959">1959</option>
              <option value="1958">1958</option>
              <option value="1957">1957</option>
              <option value="1956">1956</option>
              <option value="1955">1955</option>
              <option value="1954">1954</option>
              <option value="1953">1953</option>
              <option value="1952">1952</option>
              <option value="1951">1951</option>
              <option value="1950">1950</option>
              </select>
            </div>
          </div>
          </div>
          </fieldset>				
      <fieldset>
        <legend>Other Competitive (All India) Examinations, if any</legend>
        <div class="row" style="margin-left:auto;margin-right:auto; width:650px">
          <div class="rowHeader" style="width:275px;">Exam Name</div>
          <div class="rowHeader" style="width:130px">Maximum Marks</div>
          <div class="rowHeader" style="width:151px;border-right-width:thin; border-right-style: solid; border-right-color: #000;">Obtained Marks</div>
        </div>
        <div class="row"  style="margin-left:auto;margin-right:auto; width:650px">
          <div class="rowColumn" style="width:275px;text-align:center; border-left-width:thin; border-left-style: solid; border-left-color: #000;">
            <label for="ExamName">
            <s:textfield name="exam1.ExamName" cssStyle="width:250px;"/>
            </label>
          </div>
          <div class="rowColumn" style="width:130px; text-align:center">
          <s:textfield name="exam1.MaxMarks" cssStyle="width:50px;"/>
          </div>
          <div class="rowColumn" style="width:150px; text-align:center; border-right-width:thin; border-right-style: solid; border-right-color: #000;">
          <s:textfield name="exam1.ObtainedMarks" cssStyle="width:50px;"/>
          </div>
        </div>
        <div class="row"  style="margin-left:auto;margin-right:auto; width:650px;">
          <div class="rowColumn" style="width:275px;text-align:center; border-left-width:thin; border-left-style: solid; border-left-color: #000; border-bottom-width:thin; border-bottom-style: solid; border-bottom-color: #000;">
            <label for="ExamName">
              <s:textfield name="exam2.ExamName" cssStyle="width:250px;"/>
            </label>
          </div>
          <div class="rowColumn" style="width:130px; text-align:center;  border-bottom-width:thin; border-bottom-style: solid; border-bottom-color: #000;">
            <s:textfield name="exam2.MaxMarks" cssStyle="width:50px;"/>
          </div>
          <div class="rowColumn" style="width:150px; text-align:center; border-bottom-width:thin; border-bottom-style: solid; border-bottom-color: #000;  border-right-width:thin; border-right-style: solid; border-right-color: #000;">
            <s:textfield name="exam2.ObtainedMarks"  cssStyle="width:50px;"/>
          </div>
        </div>
      </fieldset>

<fieldset>
					<legend>Exam Test Center Preference</legend>
					<div class="row">
						<div class="column" style="width: 300px">
							<label for="Preference1">Preference 1 <span
								style="color: #C00">*</span></label> <select style="width: 146px"
								name="CityPreference1" id="Preference1">
								<option value="1">Ahmedabad</option>
								<option value="2">Rajkot</option>
								<option value="3">Gandhinagar</option>
								<option value="4">Surat</option>
								<option value="5">Baroda</option>
								<option value="6">Anand</option>
								<option value="7">Delhi</option>
							</select>
							<s:fielderror cssClass="error">
								<s:param>CityPreference1</s:param>
							</s:fielderror>
						</div>
						<div class="column" style="width: 300px">
							<label for="Preference2">Preference 2 <span
								style="color: #C00">*</span>
							</label> <select style="width: 146px" name="CityPreference2"
								id="Preference2">
								<option value="1">Ahmedabad</option>
								<option value="2">Rajkot</option>
								<option value="3">Gandhinagar</option>
								<option value="4">Surat</option>
								<option value="5">Baroda</option>
								<option value="6">Anand</option>
								<option value="7">Delhi</option>
							</select>
							<s:fielderror cssClass="error">
								<s:param>CityPreference2</s:param>
							</s:fielderror>
						</div>
						<div class="column" style="width: 300px">
							<label for="Preference3">Preference 3 <span
								style="color: #C00">*</span>
							</label> <select style="width: 146px" name="CityPreference3"
								id="Preference3">
								<option value="1">Ahmedabad</option>
								<option value="2">Rajkot</option>
								<option value="3">Gandhinagar</option>
								<option value="4">Surat</option>
								<option value="5">Baroda</option>
								<option value="6">Anand</option>
								<option value="7">Delhi</option>
							</select>
							<s:fielderror cssClass="error">
								<s:param>CityPreference3</s:param>
							</s:fielderror>
						</div>
					</div>
				</fieldset>
				<fieldset>
					<legend>Photograph Upload</legend>
					<div style="float: left; padding-right: 5px;">
						<label for="Upload">Your Photograph <span
							style="color: #C00">*</span></label>
						<s:file name="upload"></s:file>
						<small style="color: #C00">Not larger than 100 KB</small>
					</div>
					<s:fielderror cssClass="error" cssStyle="margin-top:0px">
						<s:param>uploadFileName</s:param>
					</s:fielderror>
				</fieldset>
				<fieldset>
					<legend>Bank Details</legend>
					<div class="row">
						<div class="column" style="width: 410px">
							<div style="float: left; padding-right: 5px;">
								<label for="BankName" style="padding-right:90px;">Bank Name <span
									style="color: #C00">*</span></label>
								<s:textfield name="BankName" />
							</div>
							<s:fielderror cssClass="error">
								<s:param>BankName</s:param>
							</s:fielderror>
						</div>
						<div class="column" style="width: 480px; padding-left:20px">
							<div style="float: left; padding-right: 5px;">
								<label for="BankBranch">Bank Branch <span
									style="color: #C00">*</span>
								</label>
								<s:textfield name="BankBranch" />
							</div>
							<s:fielderror cssClass="error">
								<s:param>BankBranch</s:param>
							</s:fielderror>
						</div>
						<div class="column" style="width: 430px">
							<div style="float: left; padding-right: 5px;">
								<label for="DemandDraftNumber">Demand Draft Number <span
									style="color: #C00">*</span></label>
								<s:textfield name="DemandDraftNumber" />
							</div>
							<s:fielderror cssClass="error">
								<s:param>DemandDraftNumber</s:param>
							</s:fielderror>
						</div>
						<div class="column" style="width: 480px">
							<div style="float: left; padding-right: 5px;">
								<label for="DemandDraftDate">Demand Draft Date <span
									style="color: #C00">*</span>
								</label> <select name="DDDate" style="width: 100px">
									<option value="0">Date</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
								</select> <select name="DDMonth" style="width: 100px">
									<option value="0">Month</option>
									<option value="1">January</option>
									<option value="2">February</option>
									<option value="3">March</option>
									<option value="4">April</option>
									<option value="5">May</option>
									<option value="6">June</option>
									<option value="7">July</option>
									<option value="8">August</option>
									<option value="9">September</option>
									<option value="10">October</option>
									<option value="11">November</option>
									<option value="12">December</option>
								</select> <select name="DDYear" style="width: 100px">
									<option value="0">Year</option>
									<option value="2012">2012</option>
									<option value="2013">2013</option>
									
								</select>
							</div>
							<s:fielderror cssClass="error">
								<s:param>DDDate</s:param>
							</s:fielderror>
						</div>
					</div>
				</fieldset>
				<div style="padding-left: 450px">
					<input type="submit" value="Submit" />
				</div>
			</form>
		</div>
		<div class="footer">&copy; 2013 DA-IICT, Gandhinagar.</div>
	</div>
</body>
</html>
