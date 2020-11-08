<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>

<spring:url value="/resources/css/bootstrap-4.5.2/bootstrap.min.css"
	var="bootstrapCSS" />
<spring:url value="/resources/css/admin.css" var="adminCSS" />

<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${adminCSS}" rel="stylesheet" />
<spring:url value="/resources/css/main.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />

<spring:url value="/resources/js/jquery/jquery-3.5.1.min.js"
	var="jqueryJs" />
<spring:url value="/resources/js/bootstrap-4.5.2/bootstrap.min.js"
	var="bootstrapJs" />

<script src="${jqueryJs}"></script>
<script src="${bootstrapJs}"></script>

<title>Ground Subscription Administration</title>
</head>
<body>
	<div class="container-fluid pl-0 px-0">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
			<!-- Brand -->
			<a class="navbar-brand" href="index">
				<img alt="SMC Logo" src="resources/images/AFSC.png" width="50"
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
					<li class="nav-item"><a class="nav-link" href="admin">Admin</a></li>
					<li class="nav-item"><a class="nav-link" href="myaccount">My
							Account</a></li>
					<li class="nav-item"><a class="nav-link" href="products">Products</a></li>
					<li class="nav-item"><a class="nav-link" href="faq">FAQ</a></li>
					<li class="nav-item "><a class="btn btn-warning header-btn"
							href="subscribe">Subscribe</a></li>
				</ul>
				<h3 class="header-title">DoD Electro-Optical/Infrared (EO/IR)
					Weather Data as a Service (WxDaaS)</h3>
			</div>
		</nav>
		<nav>
			<div class="nav nav-tabs bg-dark" id="nav-tab" role="tablist">
				<a class="nav-item nav-link active" id="nav-home-tab"
					data-toggle="tab" href="#nav-home" role="tab"
					aria-controls="nav-home" aria-selected="true">Home</a>
				<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
					href="#nav-profile" role="tab" aria-controls="nav-profile"
					aria-selected="false">User Search</a>
				<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
					href="#nav-contact" role="tab" aria-controls="nav-contact"
					aria-selected="false">Add/Remove Product</a>
			</div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
			<div class="tab-pane fade show active bg-dark" id="nav-home"
				role="tabpanel" aria-labelledby="nav-home-tab">
				<h3 class="center">Sheet for getting subscription statistics</h3>
				<div class="card">
					<div class="card-body">
						<div class="row card-text ">
							<form class="form-inline my-2 my-lg-0">
								<input class="form-control mr-sm-2" type="search"
									placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-light my-2 my-sm-0"
									type="submit">Search</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab">
				<h3>User update support</h3>
			</div>
			<div class="tab-pane fade" id="nav-contact" role="tabpanel"
				aria-labelledby="nav-contact-tab">
				<h3>Sheet for adding/removing products</h3>
			</div>
		</div>
	</div>
</body>
</html>