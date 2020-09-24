<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>

<spring:url value="/resources/css/main.css" var="mainCss" />
<spring:url value="/resources/js/jquery/jquery.1.10.2.min.js"
	var="jqueryJs" />
<spring:url value="/resources/js/main.js" var="mainJs" />
<spring:url value="/resources/ground.js" var="groundJS" />

<link href="${mainCss}" rel="stylesheet" />
<script src="${jqueryJs}"></script>
<script src="${mainJs}"></script>
<script src="${groundJS}"></script>

<title>Ground Subscriptions</title>
</head>
<body>
	<header class="navbar">
		<a href="subscribe" class="btn subscribe">Subscribe</a> <a
			href="welcome" class="btn welcome">FAQ</a> <a href="welcome"
			class="btn welcome">Subscriptions</a> <a href="admin"
			class="btn admin">Admin</a> <a href="welcome" class="btn welcome">My
			Account</a>
	</header>
	<section class="bg">
		<h1 class="ovr-img">Lorem ipsum dolor</h1>
		<p class="ovr-img">
			Lorem ipsum dolor sit amet, consectetur <br> adipiscing elit,
			sed do eiusmod tempor<br> incididunt ut labore et dolore magna
			aliqua. <br> Amet facilisis magna etiam tempor orci<br> eu
			lobortis. Viverra aliquet eget sit amet tellus cras adipiscing.
		</p>
		<button class="ovr-img btn subscribe ">Subscribe</button>
	</section>
	<section>
		<!-- <img src="resources/images/SpaceEarth.png" alt="SpaceEarth" /> -->
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
		<p>Some text some text some text some text..</p>
	</section>
	<section>
		${message} <br>
		<div>
			<div id="groundMessage"></div>
			<br>
			<div id="msg"></div>
		</div>
		<br>
		<div>
			<h1>Ground Subscriptions</h1>
			<form></form>
		</div>
	</section>
</body>
</html>