<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>

<spring:url value="/resources/css/main.css" var="mainCss" />
<spring:url value="/resources/css/bootstrap-4.5.2/bootstrap.min.css"
	var="bootstrapCSS" />
<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${mainCss}" rel="stylesheet" />

<spring:url value="/resources/js/jquery/jquery-3.5.1.min.js"
	var="jqueryJs" />
<spring:url value="/resources/js/bootstrap-4.5.2/bootstrap.min.js"
	var="bootstrapJs" />
<spring:url value="/resources/js/main.js" var="mainJs" />

<script src="${jqueryJs}"></script>
<script src="${mainJs}"></script>
<script src="${bootstrapJs}"></script>

<link rel="shortcut icon" href="">

<title>Ground Subscriptions</title>
</head>
<body>
	<div class="container-fluid pl-0 px-0">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
			<!-- Brand -->
			<a class="navbar-brand" href="index"> <img alt="SMC Logo"
				src="resources/images/AFSC.png" width="50" height="60">
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
		<div class="card bg-dark text-white">
			<img class="card-img" alt="NewEraSpace.png"
				src="resources/images/NewEraSpace.png" />
			<div class="card-img-overlay">
				<h5 class="card-title">Satellite WxDaaS</h5>
				<p class="card-text">
					This is the Sattellite WxDaaS<br> This tool will help user
					achieve subscriptions to our valuable products.<br>
				</p>
				<p class="card-text">
					Lorem Ipsum text is used as a filler for any information that
					will/can be filled in later. <br>Images can be used as a
					background design to invite users to the applicaiton.<br>
					Click the Subscribe button to get started
				</p>
				<a href="subscribe" class="btn btn-warning header-btn navbar-brand">Subscribe</a>
			</div>
		</div>
		<div class="card bg-dark text-white">
			<div class="card-horizontal d-flex">
				<div class="img-squar-wrapper">
					<img class="" src="resources/images/SpaceEarth.png"
						alt="SpaceEarth">
				</div>
				<div
					class="card-body align-items-center d-flex justify-content-center">
					<div class="card-text text-center">
						You can also describe information next to an image instead of
						over. <br> This can be used as a good break from one section
						to another
					</div>
				</div>
			</div>
		</div>
		<div class="card bg-dark text-white">
			<div class="card-body">
				<div class="card-text">There doesn't need to be a title or an
					image if this is preferred.</div>
			</div>
			<div class="card bg-dark text-white">
				<div class="card-body">
					<div class="card-text">
						<p>
							Large pages will have the user scrolling to the information.<br>The
							header information will be available to the user so they will not
							be restricted to the top of the page to perform actions
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>