<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>Spring Security Demo - Custom Login</title>
	</head>

	<body>
		<h3>My Custom Login Page</h3>
		
		<form:form action="${pageContext.request.contextPath}/authenticate" method="POST">
		
			<c:if test="${param.error != null}">
				<i>Invalid username/password.</i>
			</c:if>
			<c:if test="${param.logout != null}">
				<i>Successfully logged out.</i>
			</c:if>
			<br>
			<label for="username">User name: </label><input id="username" type="text" name="username"/>
			<label for="password">Password: </label><input id="password" type="text" name="password"/>
			<br>
			<input type="submit" value="Login" />
		</form:form>
	</body>
</html>