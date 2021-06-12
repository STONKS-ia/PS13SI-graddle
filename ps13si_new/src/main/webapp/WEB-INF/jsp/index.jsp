<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>

	<c:set value="${pageContext.request.contextPath}" var="contextPath" />
	<link href="${contextPath}/css/style.css" rel="stylesheet">
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Home page</title>

</head>
<body>
<section class="container">
	<nav id="nav">
		<img src="${contextPath}/img/logo.svg" alt="logo" />
		<button><a href="${contextPath}/usuario/form?page=signIn" >Login</a></button>
	</nav>

	<article id="hero">
		<h1>Bootcamp Dev Full Cycle</h1>
		<p>
			Video aulas com projetos reais para te transformar em um programador al�m do CRUD.
		</p>
		<a href="${contextPath}/usuario/form?page=signUp" class="button">Cadastre-se</a>
		<img src="${contextPath}/img/learn.svg" alt="mockup" />
	</article>
	<!-- Grow page -->
	<article class="panel" id="grow">
		<div>
			<h2>Grow Together</h2>
			<p>
				          � importante questionar o quanto a expans�o dos mercados mundiais facilita a cria��o dos modos de opera��o convencionais. 
				          Do mesmo modo, a constante divulga��o das informa��es assume importantes posi��es 
				          no estabelecimento dos m�todos utilizados na avalia��o de resultados. 
				          Podemos j� vislumbrar o modo pelo qual a revolu��o dos costumes pode nos levar 
				          a considerar a reestrutura��o do processo de comunica��o como um todo. .
			</p>
		</div>
		<img src="${contextPath}/img/test.svg" alt="grow together" />
	</article>
	<!-- Flowing page -->
	<article class="panel" id="flowing">
		<img
				src="${contextPath}/img/tutorial.svg"
				alt="flowing conversation"
		/>
		<div>
			<h2>Flowing Conversations</h2>
			<p>
				You wouldn't paginate a conversation in real life, so why do it
				online? Our threads have just-in-time loading for a more natural
				flow.
			</p>
		</div>
	</article>
	<!-- form page -->
	<article id="form">
		<h3>Contact-us</h3>
		<input type="text" placeholder="Nome completo"/>
		<input type="email" placeholder="Email"/>
		<textarea placeholder="Digite sua mensagem aqui ..."/>
				
		</textarea>
		<a href="#" >Enviar</a>
	</article>
</section>
</body>
</html>