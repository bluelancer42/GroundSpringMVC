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
<spring:url value="/resources/js/ground.js" var="groundJS" />

<script src="${jqueryJs}"></script>
<script src="${mainJs}"></script>
<script src="${groundJS}"></script>
<script src="${bootstrapJs}"></script>

<link rel="shortcut icon" href="">

<title>Ground Subscriptions</title>
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
					<li class="nav-item "><a class="btn btn-danger header-btn"
							href="subscribe">Subscribe</a></li>
				</ul>
			</div>
		</nav>
		<div class="card bg-dark text-white">
			<img class="card-img" alt="NewEraSpace.png"
				src="resources/images/NewEraSpace.png" />
			<div class="card-img-overlay">
				<h5 class="card-title">Lorem ipsum dolor</h5>
				<p class="card-text">
					Sit amet, consectetur <br> adipiscing elit, sed do eiusmod
					tempor<br> incididunt ut labore et dolore magna aliqua. <br>
					Amet facilisis magna etiam tempor orci<br> eu lobortis.
				</p>
				<p class="card-text">Viverra aliquet eget sit amet tellus cras
					adipiscing.</p>
				<a href="subscribe" class="btn btn-danger header-btn navbar-brand">Subscribe</a>
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
						Lorem ipsum dolor sit amet, consectetur <br> adipiscing elit,
						sed do eiusmod tempor<br> incididunt ut labore et dolore
						magna aliqua. <br> Amet facilisis magna etiam tempor orci<br>
						eu lobortis. Viverra aliquet eget sit amet tellus cras adipiscing.
					</div>
				</div>
			</div>
		</div>
		<div class="card bg-dark text-white">
			<div class="card-body">
				<div class="card-text">
					Lorem ipsum dolor sit amet, consectetur <br> adipiscing elit,
					sed do eiusmod tempor<br> incididunt ut labore et dolore magna
					aliqua. <br> Amet facilisis magna etiam tempor orci<br>
					eu lobortis. Viverra aliquet eget sit amet tellus cras adipiscing.
				</div>
			</div>
			<div class="card bg-dark text-white">
				<div class="card-body">
					<div class="card-text">
						${message} <br>
						<div>
							<div id="groundMessage"></div>
							<br>
							<div id="msg"></div>
						</div>
						<br>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
						<p>Ullamcorper velit sed ullamcorper morbi tincidunt.</p>
						<p>Amet justo donec enim diam vulputate.</p>
						<p>Phasellus egestas tellus rutrum tellus pellentesque eu
							tincidunt.</p>
						<p>Gravida quis blandit turpis cursus in hac.</p>
						<p>Est ullamcorper eget nulla facilisi etiam dignissim.</p>
						<p>Vulputate sapien nec sagittis aliquam malesuada bibendum
							arcu vitae.</p>
						<p>Malesuada nunc vel risus commodo viverra maecenas accumsan
							lacus.</p>
						<p>Diam maecenas ultricies mi eget mauris pharetra et
							ultrices.</p>
						<p>Diam maecenas ultricies mi eget.</p>
						<p>Urna et pharetra pharetra massa massa ultricies mi quis
							hendrerit.</p>
						<p>Cursus in hac habitasse platea.</p>
						<p>Sed risus ultricies tristique nulla aliquet enim tortor at.</p>
						<p>Neque volutpat ac tincidunt vitae semper quis lectus.</p>
						<p>Platea dictumst vestibulum rhoncus est pellentesque elit
							ullamcorper dignissim.</p>
						<form></form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>