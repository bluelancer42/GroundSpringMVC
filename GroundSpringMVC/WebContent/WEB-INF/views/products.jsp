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

<title>Products</title>
</head>
<body class="main">
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
					<li class="nav-item "><a class="btn btn-danger header-btn"
							href="subscribe">Subscribe</a></li>
				</ul>
			</div>
		</nav>
		<div class="card bg-dark text-white card-bg">
			<div class="card-body card-bg">
				<c:if test="${!empty listProduct}">
					<h5 class="card-title card-bg">Available Products</h5>
					<div class="card-text card-bg">
						<div class="container">
							<div class="row">
								<div class="col">Product Name</div>
								<div class="col">Date Last Received</div>
							</div>
							<c:forEach items="${listProduct}" var="product">
								<div class="row">
									<div class="col">${product.productName}</div>
									<div class="col">${product.dateReceived}</div>
								</div>
							</c:forEach>
							<div></div>
						</div>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>