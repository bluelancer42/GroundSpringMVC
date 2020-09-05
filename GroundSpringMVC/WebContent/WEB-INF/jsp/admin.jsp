<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>

<!-- let's add tag spring:url -->
<spring:url value="/resources/admin.css" var="adminCSS" />
<spring:url value="/resources/admin.js" var="adminJS" />
<spring:url value="/resources/common.js" var="commonJS" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="${adminCSS}" rel="stylesheet" />
<script src="${adminJS}"></script>
<!-- Finish adding tags -->

<title>Ground Subscription Administration</title>
</head>
<body>${message}
</body>
</html>