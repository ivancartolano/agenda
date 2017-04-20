<!DOCTYPE html>
<%@taglib tagdir="/WEB-INF/tags" prefix="ca"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Adiciona Contatos</title>
	<link href= "css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
</head>
<body>
	<h1>Adiciona Contatos</h1>
	<hr />
	<form action="adicionaContato" method="post">
		
		<ca:campo nome="nome" descricao="Nome"/>
		<ca:campo nome="email" descricao="E-mail"/>
		<ca:campo nome="endereco" descricao="Enderço"/>
		<ca:campoData data="dataNascimento" descricao="Data de Nascimento"/>
		
		
		<input type="submit" value="Gravar">
	</form>

</body>
</html>