<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp"/>
	<!--  -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"></jsp:useBean>
	
	<table border=1>
		<tr>
			<td>Nome</td>
			<td>Endereço</td>
			<td>Email</td>
			<td>Data de Nascimento</td>
		</tr>
		<c:forEach var="contato" items="${contatos}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
				<td>${contato.nome}</td>
				<td>${contato.endereco}</td>
				<td>
					<c:choose>
						<c:when test="${not empty contato.email }">
							<a href=mailto: ${contato.email}>
								${contato.email}
							</a>
						</c:when>
						<c:otherwise>
							N/D
						</c:otherwise>
					</c:choose>
				</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time }" pattern="dd/MM/yyyy"/></td>
				<td>
					<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>
				<td>
					<a href="mvc?logica=MostraContatoLogic&id=${contato.id}">Alterar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	
	<c:import url="rodape.jsp"/>
</body>
</html>