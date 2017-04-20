<%@ tag language="java" pageEncoding="UTF-8"%>
<%@attribute name="nome" required="true"%>
<%@attribute name="descricao" required="true"%>
<%@attribute name="value" required="false" %>
<label for="${nome}">${descricao}</label>
<input type= "text" name="${nome}" id="${nome}" value="${value}"><br/>