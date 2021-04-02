<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="resources/css/jquery.css" rel="stylesheet">
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<link type="text/css" href="../resources/css/tarefas.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/jquery.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/jquery.js" ></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>

</head>
<body>
  <h3>Alterar tarefa - ${tarefa.id}</h3>
  <form action="alteraTarefa" method="POST">
    <input type="hidden" name="id" value="${tarefa.id}" /> Descrição:<br />
    <textarea name="descricao" rows="5" cols="100">${tarefa.descricao}</textarea>
    <br /> Finalizado?<input type="checkbox" name="finalizado" value="true"
      ${tarefa.finalizado?'checked':''}>
    <br />
    
    <fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" var="data"/>
    Data de finalização: <caelum:campoData id="dataFinalizacao" value="${data}"/>
    
    <input type="submit" value="Alterar" />
  </form>
</body>
</html>