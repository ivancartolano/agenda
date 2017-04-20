<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@attribute name="data" required="true"%>
<%@attribute name="descricao" required="true"%>
<%@attribute name="value" required="false" type="java.util.Date"%>

<label for="${data}">${descricao}</label>
<fmt:formatDate value="${value}" pattern="dd/MM/yyyy" var="formatado"/>
<input type= "text" name="${data}" id="${data}" value= "${formatado}"><br/>
<br>
<script>
	$("#${data}").datepicker({dateFormat: 'dd/mm/yy'});
</script>