<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>

<spring:url value="/resources/css/bootstrap-4.5.2/bootstrap.min.css"
	var="bootstrapCSS" />
<spring:url value="/resources/css/myaccount.css" var="subscriptionCSS" />

<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${subscriptionCSS}" rel="stylesheet" />

<spring:url value="/resources/js/jquery/jquery-3.5.1.min.js"
	var="jqueryJs" />
<spring:url value="/resources/js/bootstrap-4.5.2/bootstrap.min.js"
	var="bootstrapJs" />

<script src="${jqueryJs}"></script>
<script src="${bootstrapJs}"></script>

<title>Subscriptions</title>
</head>
<body class="main">
	<header class="header-navbar">
		<img alt="SMC Logo" src="resources/images/AFSC.png" width="50"
			height="60"> <a href="subscribe"
			class="btn btn-danger header-btn">Subscribe</a> <a href="faq"
			class="btn btn-default header-btn">FAQ</a> <a href="subscriptions"
			class="btn btn-default header-btn">Subscriptions</a> <a
			href="welcome" class="btn btn-default header-btn">My Account</a> <a
			href="admin" class="btn btn-default header-btn">Admin</a>
	</header>
</body>
</html>