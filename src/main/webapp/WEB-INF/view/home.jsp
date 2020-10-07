<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<title>Spring Security Demo - Home page</title>
	</head>
	
	<body>
		<h2>Demo Home Page</h2>
		<hr>
		Welcome!
		
		<br>
		<form:form action="${pageContext.request.contextPath}/logout" 
				method="POST">
			<input type=submit value="Logout" />
		</form:form>
	</body>

</html>