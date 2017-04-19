<%@page import="java.text.SimpleDateFormat"%>
<%@ page import= "java.util.*,
		br.com.caelum.agenda.dao.*,
		br.com.caelum.agenda.modelo.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
				<td>Nome</td>
				<td>Endereço</td>
				<td>Email</td>
				<td>Data de Nascimento</td>
			</tr>
		<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		
		for (Contato c : contatos){
		%>
			<tr>
				<td><%=c.getNome() %></td>
				<td><%=c.getEndereco() %></td>
				<td><%=c.getEmail() %></td>
				<td><%=format.format(c.getDataNascimento().getTime()) %></td>
			</tr>
		<%
		}
		%>
	</table>
</body>
</html>