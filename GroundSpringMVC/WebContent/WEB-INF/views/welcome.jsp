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

<script src="${jqueryJs}"></script>
<script src="${bootstrapJs}"></script>
<title>Welcome</title>
</head>
<body>
	<div class="container h-100 d-flex justify-content-center">
		<div class="jumbotron my-auto">
			<table align="center">
				<tr>
					<td><a class="navbar-brand" href="welcome">
							<img alt="SMC Logo" src="resources/images/AFSC.png" width="200"
								height="210">
						</a></td>
				</tr>
				<tr>
					<td><h3>Departmet of Defense (DoD)</h3></td>
				</tr>
				<tr>
					<td><h3>Electro-Optical/Infrared (EO/IR)</h3></td>
				</tr>
				<tr>
					<td><h3>Weather Data as a Service (WxDaaS)</h3></td>
				</tr>
				<tr>
					<td><h3></h3></td>
				</tr>
				<tr>
					<td><h3></h3></td>
				</tr>
				<tr>
					<td><h3></h3></td>
				</tr>
				<tr>
					<td><a class="btn btn-warning btn-lg welcome-btn" href="login">Login</a>
						<a class="btn btn-warning btn-lg welcome-btn" href="register">Register</a></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>