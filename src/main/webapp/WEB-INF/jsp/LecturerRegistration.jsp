<meta charset="UTF-8" />
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker1").datepicker();
	});
</script>

<title>Lecturer Registration</title>
</head>

<body>
	<div id="main">
		<div class="container">
			<div id="content">

				<h2>R V College of Engineering</h2>

			</div>
			<nav>
				<div class="nav-fostrap">
					<ul>
						<li><a href="/home">Home</a></li>
						<li><a href="/AddStudent">Student Registration</a></li>
						<li><a href="/AddLecturer">Lecturer Registration</a></li>
						<li><a href="/AddSubject">Subject Registration</a></li>
						<li><a href="/logout">Logout</a></li>
					</ul>
				</div>
				<div class="nav-bg-fostrap">
					<div class="navbar-fostrap">
						<span></span> <span></span> <span></span>
					</div>
					<a href="" class="title-mobile">Fostrap</a>
				</div>
			</nav>
		
		<br />
	<br />
	<form:form method="post" modelAttribute="lecturer"
		action="LecturerOperation">
		<table>
		<caption>Lecturer Registration</caption>
				<tr>
			<tr>
				<td><spring:message code="lbl.ID" text="ID" /></td>
				<td><form:input path="keyID" value="${lecturer.keyID}" /></td>
				<td><form:input type="submit" path="operation"
						value="Search Lecturer" /></td>
			</tr>
		</table>
		<div align="center">
				<span>${lecturer.message}</span>
			</div>
		<br>
		<table>
			<tr>
				<td><spring:message code="lbl.ID" text="ID" /></td>
				<td><form:input path="ID" value="${lecturer.ID}" /></td>
			</tr>
			<tr>
				<td><spring:message text="First Name" /></td>
				<td><form:input path="fName" value="${lecturer.fName}" /></td>
			</tr>
			<tr>
				<td><spring:message code="lbl.mName" text="Middle Name" /></td>
				<td><form:input path="mName" value="${lecturer.mName}" /></td>
			</tr>
			<tr>
				<td><spring:message code="lbl.lName" text="Last Name" /></td>
				<td><form:input path="lName" value="${lecturer.lName}" /></td>
			</tr>
			<tr>
				<td><spring:message code="lbl.eMail" text="Email Id" /></td>
				<td><form:input path="eMail" value="${lecturer.eMail}" /></td>
			</tr>

			<tr>
				<td><spring:message code="lbl.mobileNo" text="Mobile No." /></td>
				<td><form:input path="mobileNo" value="${lecturer.mobileNo}" /></td>
			</tr>
			<tr>
				<td><spring:message code="lbl.gender" text="Gender" /></td>
				<td><form:select path="gender">
						<form:option value="${lecturer.gender}" label="${lecturer.gender}" />
						<form:option value="MALE" label="MALE" />
						<form:option value="FEMALE" label="FEMALE" />
					</form:select></td>
			</tr>

			<tr>
				<td><spring:message code="lbl.DOJ" text="Date of Joining" /></td>
				<fmt:formatDate value="${lecturer.DOJ}" pattern="MM/dd/yyyy"
					var="doj" />
				<td><form:input type="text" id="datepicker1" path="DOJ"
						value="${doj}" /></td>
			</tr>
			<tr>
				<td><form:input type="submit" path="operation"
						value="Add Lecturer" /></td>
				<td><form:input type="submit" path="operation"
						value="Update Lecturer" /></td>
				<td><form:input type="submit" path="operation"
						value="Delete Lecturer" /></td>
			</tr>
		</table>
	</form:form>
		</div>
	</div>
</body>
</html>