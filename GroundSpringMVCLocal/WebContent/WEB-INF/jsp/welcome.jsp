<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>

<!-- let's add tag spring:url -->
<spring:url value="/resources/ground.css" var="groundCSS" />
<spring:url value="/resources/ground.js" var="groundJS" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="${groundCSS}" rel="stylesheet" />
<script src="${groundJS}"></script>
<!-- Finish adding tags -->

<title>Ground Subscriptions</title>
</head>
<body>
${message}
 
	<br>
	<br>
	<div
		style="font-family: verdana; padding: 10px; border-radius: 10px; font-size: 12px; text-align: center;">
		
		<h2>Checkout this font color. Loaded from 'ground.css' file under '/WebContent/resources/' folder</h2>
 
		<div id="groundMessage"></div>
 
		Spring MCV Tutorial by <a href="https://crunchify.com">Crunchify</a>.
		Click <a href="https://crunchify.com/category/java-tutorials/"
			target="_blank">here</a> for all Java and <a
			href='https://crunchify.com/category/spring-mvc/' target='_blank'>here</a>
		for all Spring MVC, Web Development examples.<br>
	</div>
</body>
</html>