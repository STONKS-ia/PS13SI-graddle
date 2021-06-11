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
		<h1>Build The Community Your Fans Will Love</h1>
		<p>
			Huddle re-imagines the way we build communities. You have a voice, but
			so does your audience. Create connections with your users as you
			engage in genuine discussion.
		</p>
		<a href="${contextPath}/usuario/form?page=signUp" class="button">Cadastre-se</a>
		<img src="${contextPath}/img/learn.svg" alt="mockup" />
	</article>
	<!-- Grow page -->
	<article class="panel" id="grow">
		<div>
			<h2>Grow Together</h2>
			<p>
				Generate meaningful discussions with your audience and build a
				strong, loyal community. Think of the insightful conversations you
				miss out on with a feedback form.
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
	</article>
</section>
</body>
</html>