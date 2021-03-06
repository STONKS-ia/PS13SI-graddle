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
	
<title>Atualizar curso</title>

</head>
<body>

<div class="login-box">
<h2>Atualiza??o de curso</h2>
	<form:form modelAttribute="cursoModel"
		action="${contextPath}/curso/${cursoModel.idCurso}" method="put" class="container">

		<div class="user-box">
			<form:input type="text" path="nome" id="nome" name="nome"
						maxlength="100" size="50" />
			<font color="red"><form:errors path="nome" /></font>
			<label for="nome">Nome curso</label>
		</div>
		<div class="user-box">
			<form:input type="text" path="duracao" id="duracao" name="duracao"
						maxlength="100" size="50" />
			<font color="red"><form:errors path="duracao" /></font>
			<label for="duracao">Dura??o</label>
		</div>
		<div class="user-box">
			<form:input type="text" path="preco" id="preco" name="preco"
						maxlength="50" size="50" />
			<font color="red"><form:errors path="preco" /></font>
			<label for="preco">Pre?o</label>
		</div>
		<div class="user-box">
			<form:input type="text" path="descricaoCurso" id="descricaoCurso" name="descricaoCurso"
						maxlength="100" size="50" />
			<font color="red"><form:errors path="descricaoCurso" /></font>
			<label for="descricaoCurso">Descri??o Curso</label>
		</div>

		<button type="submit">
			<a>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				Atualizar
			</a>
		</button>
		
	</form:form>
</div>
</body>
</html>
