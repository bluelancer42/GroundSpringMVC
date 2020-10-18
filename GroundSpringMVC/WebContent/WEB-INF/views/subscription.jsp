<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>

<spring:url value="/resources/css/bootstrap-4.5.2/bootstrap.min.css"
	var="bootstrapCSS" />
<spring:url value="/resources/css/myaccount.css" var="myAccountCSS" />

<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${myAccountCSS}" rel="stylesheet" />

<spring:url value="/resources/js/jquery/jquery-3.5.1.min.js"
	var="jqueryJs" />
<spring:url value="/resources/js/bootstrap-4.5.2/bootstrap.min.js"
	var="bootstrapJs" />

<script src="${jqueryJs}"></script>
<script src="${bootstrapJs}"></script>

<title>Edit Subscription</title>
</head>
<body class="main">
	<div class="container-fluid pl-0 px-0">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
			<!-- Brand -->
			<a class="navbar-brand" href="index">
				<img alt="SMC Logo" src="../resources/images/AFSC.png" width="50"
					height="60">
			</a>
			<!-- Toggler/collapsibe Button -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- Navbar links -->
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="../admin">Admin</a></li>
					<li class="nav-item"><a class="nav-link" href="../myaccount">My
							Account</a></li>
					<li class="nav-item"><a class="nav-link" href="../products">Products</a></li>
					<li class="nav-item"><a class="nav-link" href="../faq">FAQ</a></li>
					<li class="nav-item "><a class="btn btn-danger header-btn"
							href="../subscribe">Subscribe</a></li>
				</ul>
			</div>
		</nav>
		<h1>Update a Subscription</h1>
		<c:url var="addAction" value="/subscription/add"></c:url>
		<form:form action="${addAction}" modelAttribute="subscription">
			<table>
				<c:if test="${!empty subscription.subscriptionName}">
					<tr>
						<form:hidden path="subscriptionId" />
						<form:hidden path="userId" />
					</tr>
				</c:if>
				<tr>
					<td><form:label path="subscriptionName">
							<spring:message text="Subscription Name: " />
						</form:label></td>
					<td><form:input path="subscriptionName" /></td>
				</tr>
				<tr>
					<td><form:label path="lastReceived">
							<spring:message text="Last Received Date: " />
						</form:label></td>
					<td><form:input path="lastReceived" readonly="true"
							disabled="true" maxlength="200" class="subscriptionInput" /></td>
				</tr>
				<tr>
					<td><form:label path="lastSent">
							<spring:message text="Last Sent Date: " />
						</form:label></td>
					<td><form:input path="lastSent" readonly="true"
							disabled="true" maxlength="200" class="subscriptionInput" /></td>
				</tr>
				<tr>
					<td><form:label path="bbox">
							<spring:message text="BBOX: " />
						</form:label></td>
					<td><form:input path="bbox" maxlength="200"
							class="subscriptionInput" /></td>
				</tr>
				<tr>
					<td colspan="2"><c:if
							test="${!empty subscription.subscriptionName}">
							<input type="submit"
								value="<spring:message text="Edit Subscription"/>" />
						</c:if> <c:if test="${empty subscription.subscriptionName}">
						</c:if></td>
				</tr>
			</table>
		</form:form>
		<br>
		<h3>Subscriptions List</h3>
		<c:if test="${!empty listSubscriptions}">
			<table class="tg">
				<tr>
					<th width="120">Subscription Name</th>
					<th width="60">Last Received Date</th>
					<th width="60">Last Sent Date</th>
					<th width="120">BBOX</th>
				</tr>
				<c:forEach items="${listSubscriptions}" var="subscription">
					<tr>
						<td>${subscription.subscriptionName}</td>
						<td>${subscription.lastReceived}</td>
						<td>${subscription.lastSent}</td>
						<td>${subscription.bbox}</td>
						<td><a
								href="<c:url value='/edit/${subscription.subscriptionId}' />"
								class="button">Edit</a> <a
								href="<c:url value='/remove/${subscription.subscriptionId}' />"
								class="btn">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>