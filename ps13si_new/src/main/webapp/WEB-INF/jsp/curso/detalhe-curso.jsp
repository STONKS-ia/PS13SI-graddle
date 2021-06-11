<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<link href="${contextPath}/css/detalheCurso.css" rel="stylesheet">

<title>${curso.nome}</title>
</head>
<body>
    <div class="container">
        <img src="${contextPath}/img/tutorial.svg" alt="curso">
        <h1>${curso.nome}</h1>
        <p>${curso.descricaoCurso}</p>
        <button>Comprar por <span>${curso.preco}</span></button>
    </div>
        
</body>
</html>