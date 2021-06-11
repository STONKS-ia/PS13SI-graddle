<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<link href="${contextPath}/css/cadastroMunicipio.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@200;300;400;500;600;700&display=swap"
	rel="stylesheet" />

<title>Cadastro Cursos</title>

</head>
<body>
	<form:form modelAttribute="cursoModel"
		action="${contextPath}/curso" method="post" class="container">

		<h1>Novo curso</h1>

		<form:input type="text" path="nome" id="nome" name="nome"
			placeholder="nome" maxlength="100" size="50" />
		<font color="red"><form:errors path="nome" /></font>
		<br />

		<form:input type="text" path="duracao" id="duracao" name="duracao"
			placeholder="duracao" maxlength="100" size="50" />
		<font color="red"><form:errors path="duracao" /></font>
		<br />

		<form:input type="text" path="descricaoCurso" id="descricaoCurso" name="descricaoCurso"
			placeholder="descricaoCurso" maxlength="100" size="50" />
		<font color="red"><form:errors path="descricaoCurso" /></font>
		<br />

		<form:input type="text" path="preco" id="preco" name="preco"
			placeholder="preco" maxlength="50" size="50" />
		<font color="red"><form:errors path="preco" /></font>
		<br />

		<button type="submit">Cadastrar</button>
		
	</form:form>
</body>
</html>
