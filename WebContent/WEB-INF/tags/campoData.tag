<%@ tag language="java" pageEncoding="UTF-8"%>
<%@attribute name="data" required="true"%>
<%@attribute name="descricao" required="true"%>

<label for="${data}">${descricao}</label>
<input type= "text" name="${data}" id="${data}"><br/>
<br>
<script>
	$("#${data}").datepicker({dateFormat: 'dd/mm/yy'});
</script>