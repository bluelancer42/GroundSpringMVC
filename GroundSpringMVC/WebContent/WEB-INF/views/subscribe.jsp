<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>

<spring:url value="/resources/css/bootstrap-4.5.2/bootstrap.min.css"
	var="bootstrapCSS" />
<spring:url value="/resources/js/leaflet/leaflet.css" var="leafletCSS" />
<spring:url value="/resources/css/subscribe.css" var="subscribeCSS" />

<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${leafletCSS}" rel="stylesheet" />
<link href="${subscribeCSS}" rel="stylesheet" />

<spring:url value="/resources/js/jquery/jquery-3.5.1.min.js"
	var="jqueryJs" />
<spring:url value="/resources/js/bootstrap-4.5.2/bootstrap.min.js"
	var="bootstrapJs" />
<spring:url value="/resources/js/subscribe.js" var="subscribeJs" />
<spring:url value="/resources/js/leaflet/leaflet.js" var="leafletJs" />

<script src="${jqueryJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="${leafletJs}"></script>


<title>Subscribe</title>
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
	</div>
	<div id="map"></div>
	<c:url var="addSubscription" value="/addSubscription"></c:url>
	<form:form action="${addSubscription}" modelAttribute="subscription">
		<div class="card bg-dark text-white card-bg">
			<div class="card-body card-bg">
				<div class="row card-text card-bg">
					<table class="text-white">
						<tr>
							<td>Product Names:</td>
							<td><form:select path="product.productId">
									<form:option value="-" label="--Please Select" />
									<form:options items="${listProduct}" itemValue="productId"
										itemLabel="productName" />
								</form:select></td>
						</tr>
						<tr>
							<td>BBOX:</td>
							<td><form:input id="bbox" path="bbox" maxlength="200"
									readonly="true" /></td>
						</tr>
						<tr>
							<td>Send to destination or Get URL</td>
						</tr>
						<tr>
							<td>Send to destination: <form:radiobutton path="toSend"
									value="true" />
							</td>
							<td>Get URL: <form:radiobutton path="toSend" value="false" />
							</td>
						</tr>
						<tr>
							<td><form:label path="destinationType"
									name="destinationType" hidden="true">
									<spring:message text="Send to Email:" />
								</form:label></td>
							<td><form:checkbox path="destinationType" value="email"
									hidden="true" /></td>
						</tr>
						<tr>
							<td><form:label path="destinationType"
									name="destinationType" hidden="true">
									<spring:message text="Send through SFTP: " />
								</form:label></td>
							<td><form:checkbox path="destinationType" value="sftp"
									hidden="true" disabled="true" data-toggle="tooltip"
									data-placement="top" title="Functionality Coming soon" /></td>
						</tr>
						<tr>
							<td><form:label path="destination" name="destination"
									hidden="true">
									<spring:message text="Destination" />
								</form:label></td>
							<td><form:input id="destination" path="destination"
									maxlength="200" hidden="true"
									placeholder="/home/mydir/finaldest" /></td>
						</tr>

						<form:hidden path="user.userId" value="${user.userId}" />
						<tr>
							<td colspan="2"><input type="submit" class="btn btn-primary"
								value="<spring:message text="Submit"/>" /></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</form:form>
	<script src="${subscribeJs}"></script>
</body>
</html>