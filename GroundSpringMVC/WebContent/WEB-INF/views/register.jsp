<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<spring:url value="/resources/css/main.css" var="mainCss" />
<spring:url value="/resources/css/bootstrap-4.5.2/bootstrap.min.css"
	var="bootstrapCSS" />

<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${mainCss}" rel="stylesheet" />

<spring:url value="/resources/js/jquery/jquery-3.5.1.min.js"
	var="jqueryJs" />
<spring:url value="/resources/js/bootstrap-4.5.2/bootstrap.min.js"
	var="bootstrapJs" />
<spring:url value="/resources/js/main.js" var="mainJs" />
<spring:url value="/resources/js/ground.js" var="groundJS" />

<script src="${jqueryJs}"></script>
<script src="${mainJs}"></script>
<script src="${groundJS}"></script>
<script src="${bootstrapJs}"></script>
<title>Registration</title>
</head>
<body>
	<div class="container-fluid pl-0 px-0">
		<div class="card bg-dark text-white">
			<div class="card-body">
				<div class="card-text">
					<c:url var="register" value="/register"></c:url>
					<form:form action="${register}" modelAttribute="user">
						<table align="center">
							<tr>
								<td><form:label path="username">Username</form:label></td>
								<td><form:input path="username" maxlength="200"
										cssClass="form-control" /></td>
								<td><form:errors path="username" cssClass="errormsg" /></td>
							</tr>
							<tr>
								<td><form:label path="password">Password</form:label></td>
								<td><form:password path="password" cssClass="form-control" /></td>
								<td><form:errors path="password" cssClass="errormsg" /></td>
							</tr>
							<tr>
								<td><form:label path="firstName">FirstName</form:label></td>
								<td><form:input path="firstName" cssClass="form-control" /></td>
								<td><form:errors path="firstName" cssClass="errormsg" /></td>
							</tr>
							<tr>
								<td><form:label path="lastName">LastName</form:label></td>
								<td><form:input path="lastName" cssClass="form-control" /></td>
								<td><form:errors path="lastName" cssClass="errormsg" /></td>
							</tr>
							<tr>
								<td><form:label path="email">Email</form:label></td>
								<td><form:input path="email" cssClass="form-control"
										type="email" /></td>
								<td><form:errors path="email" cssClass="errormsg" /></td>
							</tr>

							<tr>
								<td></td>
								<td align="left"><input type="submit"
										class="btn btn-warning"
										value="<spring:message text="Register"/>" /></td>
							</tr>
							<tr></tr>
							<tr>
								<td></td>
								<td><a href="welcome">Home</a></td>
							</tr>
						</table>
					</form:form>
					<table align="center">
						<tr>
							<td style="font-style: italic; color: red;">${message}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>