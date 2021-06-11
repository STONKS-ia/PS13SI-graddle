<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<link href="${contextPath}/css/signUp.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@200;300;400;500;600;700&display=swap"
	rel="stylesheet" />

<title>Cadastro Usuario</title>

</head>
<body>
	<form:form modelAttribute="usuarioModel"
		action="${contextPath}/usuario" method="post" class="container">

		<h1>Novo Usuário</h1>
		
		<form:input type="text" path="cpf" id="cpf" name="cpf"
			placeholder="Cpf" maxlength="100" size="50" />
			<font color="red"><form:errors path="cpf"/></font><br/>
			
		<form:input type="text" path="email" id="email" name="email"
			placeholder="Email" maxlength="100" size="50" />
			<font color="red"><form:errors path="email"/></font><br/>
			
		<form:input type="text" path="nome" id="nome" name="nome"
			placeholder="nome" maxlength="100" size="50" />
			<font color="red"><form:errors path="nome"/></font><br/>
			
				
		<form:input type="password" path="senha" id="senha" name="senha"
			placeholder="Senha" maxlength="50" size="50" />
			<font color="red"><form:errors path="senha"/></font><br/>
			
		<form:input type="text" path="telefone" id="telefone" name="telefone"
			placeholder="Telefone" maxlength="50" size="50" />
			<font color="red"><form:errors path="telefone"/></font><br/>
			
		<form:input type="text" path="tipo" id="tipo" name="tipo"
			placeholder="Tipo" maxlength="100" size="50" />
			<font color="red"><form:errors path="tipo"/></font><br/>		
			
		
			
		<button type="submit">Cadastrar</button>
	</form:form>
</body>
</html>
