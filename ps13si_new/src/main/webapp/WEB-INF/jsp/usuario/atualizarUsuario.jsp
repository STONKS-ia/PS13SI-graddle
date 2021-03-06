<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<link href="${contextPath}/css/signUp.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@200;300;400;500;600;700&display=swap"
	rel="stylesheet" />
	
<title>Atualizar Usuario</title>

</head>
<body>
	<form:form modelAttribute="usuarioModel" action="${contextPath}/usuario/${usuarioModel.idUsuario}" method="put" class="container">
	
		<h1>Atualizar</h1>
		
		<form:input type="text" path="email" id="email" name="email" placeholder="Email" maxlength="100" size="50" />
			<font color="red"><form:errors path="email"/></font><br/>
			
		<form:input type="text" path="senha" id="password" name="password" placeholder="Senha" maxlength="50" size="50" />
			<font color="red"><form:errors path="senha"/></font><br/>
			
		<form:input type="text" path="telefone" id="phone" name="phone" placeholder="Telefone" maxlength="50" size="50" />
			<font color="red"><form:errors path="telefone"/></font><br/>
			
		
		
		<button type="submit">Atualizar</button>
	</form:form>
</body>
</html>
