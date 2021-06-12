<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<link href="${contextPath}/css/signIn.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@200;300;400;500;600;700&display=swap"
	rel="stylesheet" />
<title>Logar</title>
</head>
<body>

<div class="login-box">

	<h2>BootDev</h2>
	<form:form modelAttribute="usuarioModel" action="${contextPath}/usuario/login" method="post"
		class="container">

		<div class="user-box">
			<form:input type="text" path="email" id="user" name="user"
						 maxlength="50" size="50" />
			<font color="red"><form:errors path="email" /></font>
			<label>Email</label>
		</div>

		<div class="user-box">
			<form:input type="password" path="senha" id="password" name="password"
										  maxlength="50" size="50"  />
			<font color="red"><form:errors path="senha" /></font>
			<label>Password</label>
		</div>

		<button type="submit">

			<a>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				Entrar
			</a>
		</button>
	</form:form>
</div>
</body>
</html>