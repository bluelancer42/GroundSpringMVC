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
<spring:url value="/resources/js/admin.js" var="adminJS" />

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
					<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="false">Admin</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="statistics">Statistics</a>
							<a class="dropdown-item" href="adminuser">Search User</a>
							<a class="dropdown-item" href="adminproduct">Search Product</a>
						</div></li>
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
		<br>
		<c:url var="searchAction" value="/adminproduct"></c:url>
		<form:form action="${searchAction}" modelAttribute="product">
			<div class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search" id="gsearch"
					name="gsearch" value="${gsearch}">
				<input type="submit" value="<spring:message text="Search Product"/>"
					class="btn btn-outline-light my-2 my-sm-0" />
			</div>
			<div>
				<c:forEach items="${productsList}" var="productsList"
					varStatus="status">
					<div class="card">
						<div class="card-body">
							<div class="row card-text ">
								<table>
									<tr>
										<th>Product Name</th>
										<th>|</th>
										<th>Date Last Received</th>
									</tr>
									<tr>
										<td>${productLinks.get(status.index)}</td>
										<th>|</th>
										<td><form:label path="dateReceived">
												<spring:message text="${productsList.dateReceived}" />
											</form:label></td>
										<th></th>
										<td><a
												href="<c:url value='/removeproduct/${productsList.productId}' />"
												class="btn btn-outline-danger btn-sm">Delete</a></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</form:form>
	</div>
</body>
</html>