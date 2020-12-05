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

<title>DoD Electro-Optical/Infrared (EO/IR) Weather Data as a
	Service (WxDaaS) Administration</title>
</head>
<body>
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
					<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="false">Admin</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="../statistics">Statistics</a>
							<a class="dropdown-item" href="../adminuser">Search User</a>
							<a class="dropdown-item" href="../adminproduct">Search
								Product</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="../myaccount">My
							Account</a></li>
					<li class="nav-item"><a class="nav-link" href="../products">Products</a></li>
					<li class="nav-item"><a class="nav-link" href="../faq">FAQ</a></li>
					<li class="nav-item "><a class="btn btn-warning header-btn"
							href="subscribe">Subscribe</a></li>
				</ul>
				<h3 class="header-title">DoD Electro-Optical/Infrared (EO/IR)
					Weather Data as a Service (WxDaaS)</h3>
			</div>
		</nav>
		<c:url var="updateProduct" value="/saveproduct"></c:url>
		<form:form action="${updateProduct}" modelAttribute="product">
			<div align="center">
				<div class="card">
					<div class="card-body">
						<div class="row card-text ">
							<table>
								<form:hidden path="productId" />
								<tr>
									<td><form:label path="productName">
											<spring:message text="Product Name" />
										</form:label></td>
									<td><form:input path="productName" maxlength="200"
											cssStyle="width:250%" /></td>
								</tr>
								<tr>
									<td colspan="3"><input type="submit"
											class="btn btn-warning"
											value="<spring:message text="Save Changes"/>"
											id="productSave" />
										<button type="button" name="back" onclick="history.back()"
											class="btn btn-dark btn-sm">Back</button></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<br>
			</div>
		</form:form>
	</div>
</body>
</html>