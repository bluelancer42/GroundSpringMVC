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
<spring:url value="/resources/js/myaccount.js" var="myaccountJs" />

<script src="${jqueryJs}"></script>
<script src="${bootstrapJs}"></script>

<title>My Account</title>
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
		<c:url var="updateUser" value="/updateUser"></c:url>
		<form:form action="${updateUser}" modelAttribute="user">
			<div class="card">
				<div class="card-body">
					<div class="row card-text ">

						<table>
							<form:hidden path="userId" />
							<tr>
								<td><form:label path="username">
										<spring:message text="Username" />
									</form:label></td>
								<td><form:input path="username" readonly="true"
										disabled="true " maxlength="200" class="userInput" /></td>
							</tr>
							<tr>
								<td><form:label path="firstName">
										<spring:message text="First Name: " />
									</form:label></td>
								<td><form:input path="firstName" maxlength="200"
										class="userInput" /></td>
							</tr>
							<tr>
								<td><form:label path="lastName">
										<spring:message text="Last Name" />
									</form:label></td>
								<td><form:input path="lastName" maxlength="200"
										class="userInput" /></td>
							</tr>
							<tr>
								<td><form:label path="email">
										<spring:message text="Email" />
									</form:label></td>
								<td><form:input path="email" type="email" maxlength="200"
										class="userInput" /></td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" class="btn btn-danger"
									value="<spring:message text="Save Changes"/>" /></td>
							</tr>
						</table>

					</div>
				</div>
			</div>
		</form:form>
		<br>
		<h3>Subscriptions List</h3>
		<br>
		<script src="${myaccountJs}"></script>
		<div class="card-columns">
			<c:forEach items="${subscription.subscriptions}" var="subscription"
				varStatus="status">
				<c:url var="updateSubscription" value="/updateSubscription"></c:url>
				<form:form action="${updateSubscription}"
					modelAttribute="subscription">
					<div class="card">
						<div class="card-body">
							<div class="row card-text ">
								<table>
									<tr>
										<th>Product Name</th>
										<td><form:input
												path="subscriptions[${status.index}].product.productName"
												readonly="true" disabled="true" class="subscriptionInput" /></td>
									</tr>
									<tr>
										<th>BBOX</th>
										<td><form:input
												path="subscriptions[${status.index}].bbox"
												class="subscriptionInput" /></td>
									</tr>
									<tr>
										<td><form:hidden
												path="subscriptions[${status.index}].subscriptionId" /></td>
									</tr>
									<tr>
										<th>Send to destination or Get URL</th>
										<td>Send to destination: <form:radiobutton
												path="subscriptions[${status.index}].toSend" class="toSend"
												value="true" />
										</td>
									</tr>
									<tr>
										<th />
										<td>Get URL: <form:radiobutton
												path="subscriptions[${status.index}].toSend" class="toSend"
												value="false" />
										</td>
									</tr>
									<tr>
										<th hidden="true"
											class="subscriptions[${status.index}].destinationType">Send
											to Email:</th>
										<td><form:checkbox
												path="subscriptions[${status.index}].destinationType"
												value="email" hidden="true"
												class="subscriptions[${status.index}].destinationType" /></td>
									</tr>
									<tr>
										<th hidden="true"
											class="subscriptions[${status.index}].destinationType">Send
											through SFTP:</th>
										<td><form:checkbox
												path="subscriptions[${status.index}].destinationType"
												value="sftp" hidden="true" disabled="true"
												data-toggle="tooltip" data-placement="top"
												title="Functionality Coming soon"
												class="subscriptions[${status.index}].destinationType" /></td>
									</tr>
									<tr>
										<th hidden="true"
											class="subscriptions[${status.index}].destination">Destination:</th>
										<td><form:input id="destination"
												path="subscriptions[${status.index}].destination"
												maxlength="200" hidden="true"
												placeholder="/home/mydir/finaldest"
												class="subscriptions[${status.index}].destination" /></td>
									</tr>
								</table>
								<input type="submit" class="btn btn-danger float-right"
									value="<spring:message text="Save Changes"/>" />
								<a
									href="<c:url value='/removemysubscription/${subscription.subscriptionId}' />"
									class="btn">Delete</a>
							</div>
						</div>
					</div>
				</form:form>
			</c:forEach>
		</div>
	</div>
	<script src="${myaccountJs}"></script>
</body>
</html>