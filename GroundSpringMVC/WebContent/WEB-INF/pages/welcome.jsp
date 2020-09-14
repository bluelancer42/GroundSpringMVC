<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>

<spring:url value="/resources/css/main.css" var="mainCss" />
<spring:url value="/resources/js/jquery.1.10.2.min.js" var="jqueryJs" />
<spring:url value="/resources/js/main.js" var="mainJs" />
<spring:url value="/resources/ground.js" var="groundJS" />

<link href="${mainCss}" rel="stylesheet" />
<script src="${jqueryJs}"></script>
<script src="${mainJs}"></script>
<script src="${groundJS}"></script>

<title>Ground Subscriptions</title>
</head>
<body>
	${message}
	<br>
	<div>
		<h1>1. Test main CSS</h1>
		<h2>main.css h2</h2>
		<h2>Checkout this font color. Loaded from 'main.css' file under
			'/WebContent/resources/css/' folder</h2>
		<h4>main.css h4</h4>
		<div id="groundMessage"></div>
		<br>
		<div id="msg"></div>
	</div>
	<br>
	<div>
		<h1>Ground Subscriptions</h1>
		<form></form>
	</div>
</body>
</html>