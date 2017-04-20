<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib tagdir="/WEB-INF/tags" prefix="ca"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Mostra contato</title>
	<link href= "css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
</head>
<body>
	<form action="mvc" method="post">
		<input type="hidden" name="logica" value="AlteraContatoLogic">
		<input type="hidden" name="id" value="${contato.id}">
		
		<ca:campo nome="nome" descricao="Nome" value="${contato.nome}"/>
		<ca:campo nome="email" descricao="E-mail" value="${contato.email}"/>
		<ca:campo nome="endereco" descricao="Enderço" value="${contato.endereco}"/>
		<ca:campoData data="dataNascimento" descricao="Data de Nascimento" value="${contato.dataNascimento.time}"/>
		
		
		<input type="submit" value="Gravar">
	</form>
</body>
</html>