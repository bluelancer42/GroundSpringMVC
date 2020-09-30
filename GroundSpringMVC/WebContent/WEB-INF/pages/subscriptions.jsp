<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<div class="container-fluid pl-0 px-0">
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
		<div class="card bg-dark text-white">
			<div class="card-body">
				<h5 class="card-title">Available Subscriptions</h5>
				<div class="card-text">
					<div class="container">
						<div class="row">
							<div class="col">Subscription</div>
							<div class="col">Date Last Sent</div>
						</div>
						<c:forEach items="${subscriptions}" var="subscriptions">
							<div class="row">
								<div class="col">${subscriptions.name}</div>
								<div class="col">${subscriptions.lastSentDate}</div>
							</div>
						</c:forEach>
						<div></div>
					</div>
				</div>
			</div>
		</div>
		<div class="card bg-dark text-white">
			<div class="card-body">
				<h5 class="card-title">Current Subscriptions</h5>
				<div class="card-text"></div>
			</div>
		</div>
	</div>
</body>
</html>