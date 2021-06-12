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

	<div class="login-box">

		<h2>Novo Usuário</h2>

		<form:form modelAttribute="usuarioModel"
			action="${contextPath}/usuario" method="post" class="container">


			<div class="user-box">
				<form:input type="text" path="nome" id="nome" name="nome"
					maxlength="100" size="50" />
				<font color="red"><form:errors path="nome" /></font> <label>Nome</label>
			</div>
			<div class="user-box">
				<form:input type="text" path="cpf" id="cpf" name="cpf"
					maxlength="100" size="50" />
				<font color="red"><form:errors path="cpf" /></font> <label>CPF</label>
			</div>
			<div class="user-box">
				<form:input type="text" path="email" id="email" name="email"
					maxlength="100" size="50" />
				<font color="red"><form:errors path="email" /></font> <label>Email</label>
			</div>
			<div class="user-box">
				<form:input type="password" path="senha" id="senha" name="senha"
					maxlength="50" size="50" />
				<font color="red"><form:errors path="senha" /></font> <label>Senha</label>
			</div>
			<div class="user-box">
				<form:input type="text" path="telefone" id="telefone"
					name="telefone" maxlength="50" size="50" />
				<font color="red"><form:errors path="telefone" /></font> <label>Tipo</label>
			</div>

			<button type="submit">
				<a> <span></span> <span></span> <span></span> <span></span>
					Cadastrar
				</a>
			</button>
		</form:form>

	</div>
</body>
</html>
