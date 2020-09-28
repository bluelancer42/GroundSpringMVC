<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>

<spring:url value="/resources/css/main.css" var="mainCss" />
<spring:url value="/resources/css/bootstrap-4.5.2/bootstrap.min.css"
	var="bootstrapCSS" />
<spring:url value="/resources/js/jquery/jquery-3.5.1.min.js"
	var="jqueryJs" />
<spring:url
	value="/resources/js/bootstrap/bootstrap-4.5.2/bootstrap.min.js"
	var="bootstrapJs" />
<spring:url value="/resources/js/main.js" var="mainJs" />
<spring:url value="/resources/js/ground.js" var="groundJS" />

<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${mainCss}" rel="stylesheet" />
<script src="${jqueryJs}"></script>
<script src="${mainJs}"></script>
<script src="${groundJS}"></script>
<script src="${bootstrapJs}"></script>

<link rel="shortcut icon" href="">

<title>Ground Subscriptions</title>
</head>
<body class="main">
	<header class="header-navbar">
		<img alt="SMC Logo" src="resources/images/AFSC.png" width="50"
			height="60"> <a href="subscribe"
			class="btn btn-danger header-btn">Subscribe</a> <a href="faq"
			class="btn btn-default header-btn">FAQ</a> <a href="subscriptions"
			class="btn btn-default header-btn">Subscriptions</a> <a
			href="myaccount" class="btn btn-default header-btn">My Account</a> <a
			href="admin" class="btn btn-default header-btn">Admin</a>
	</header>
	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="ovr-img panel-body bg">
					Lorem ipsum dolor sit amet, consectetur <br> adipiscing elit,
					sed do eiusmod tempor<br> incididunt ut labore et dolore magna
					aliqua. <br> Amet facilisis magna etiam tempor orci<br>
					eu lobortis. Viverra aliquet eget sit amet tellus cras adipiscing.
					<button class="ovr-img ovr-img-btn btn btn-danger">Subscribe</button>
				</div>
			</div>
			<div class="panel panel-default border-dark">
				<div class="panel-body">
					Lorem ipsum dolor sit amet, consectetur <br> adipiscing elit,
					sed do eiusmod tempor<br> incididunt ut labore et dolore magna
					aliqua. <br> Amet facilisis magna etiam tempor orci<br>
					eu lobortis. Viverra aliquet eget sit amet tellus cras adipiscing.
				</div>
			</div>
			<div class="panel panel-default">
				${message} <br>
				<div>
					<div id="groundMessage"></div>
					<br>
					<div id="msg"></div>
				</div>
				<br>
				<div>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
						do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
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
					<p>Diam maecenas ultricies mi eget mauris pharetra et ultrices.</p>
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
</body>
</html>