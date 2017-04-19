<%@ tag language="java" pageEncoding="UTF-8"%>
<%@attribute name="nome" required="true"%>
<%@attribute name="descricao" required="true"%>
<label for="${nome}">${descricao}</label>
<input type= "text" name="${nome}" id="${nome}"><br/>