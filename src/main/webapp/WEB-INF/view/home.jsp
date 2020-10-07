<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<html>
	<head>
		<title>Spring Security Demo - Home page</title>
	</head>
	
	<body>
		<h2>Demo Home Page</h2>
		Welcome!
		<hr>
		User: <security:authentication property="principal.username" />
		<hr>
		Roles: <security:authentication property="principal.authorities"/>
		<security:authorize access="hasRole('MANAGER')">
			<hr>
			<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
		</security:authorize>
		<security:authorize access="hasRole('ADMIN')">
		<hr>
		<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		</security:authorize>
		<br>
		<form:form action="${pageContext.request.contextPath}/logout" 
				method="POST">
			<input type=submit value="Logout" />
		</form:form>
	</body>

</html>