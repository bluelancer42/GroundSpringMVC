<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

<title>Subscriptions FAQ</title>
</head>
<body class="main">
	<div class="container-fluid pl-0 px-0">
		<!-- <nav class="navbar fixed-top navbar-dark bg-dark"> -->
		<nav class="navbar sticky-top navbar-dark bg-dark">
			<a class="navbar-brand" href="welcome">
				<img alt="SMC Logo" src="resources/images/AFSC.png" width="50"
					height="60">
			</a>
			<a href="admin" class="btn btn-dark header-btn navbar-brand">Admin</a>

			<a href="myaccount" class="btn btn-dark header-btn navbar-brand">My
				Account</a>
			<a href="subscriptions" class="btn btn-dark header-btn navbar-brand">Subscriptions</a>
			<a href="faq" class="btn btn-dark header-btn navbar-brand">FAQ</a>
			<a href="subscribe" class="btn btn-danger header-btn navbar-brand">Subscribe</a>
		</nav>
	</div>
</body>
</html>