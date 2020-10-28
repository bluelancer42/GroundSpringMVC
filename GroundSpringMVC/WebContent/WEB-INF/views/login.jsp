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
<spring:url value="/resources/css/faq.css" var="faqCSS" />

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
<title>Login</title>
</head>
<body>
	<div class="container-fluid pl-0 px-0">
		<div class="card bg-dark text-white">
			<div class="card-body">
				<div class="card-text">
					<c:url var="login" value="/login"></c:url>
					<form:form action="${login}" modelAttribute="user">
						<table align="center">
							<tr>
								<td><form:label path="username">
										<spring:message text="Username:" />
									</form:label></td>
								<td><form:input path="username" readonly="true"
										disabled="true " maxlength="200" /></td>
							</tr>
							<tr>
								<td><form:label path="password">
										<spring:message text="Password:" />
									</form:label></td>
								<td><form:password path="password" name="password"
										id="password" maxlength="200" /></td>
							</tr>
							<tr>
								<td></td>
								<td align="left"><input type="submit"
									class="btn btn-danger" value="<spring:message text="Login"/>" /></td>
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