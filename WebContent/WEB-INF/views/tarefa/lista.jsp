<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <a href="novaTarefa">Criar nova tarefa</a>
  <br />
  <br />

  <table>
    <tr>
      <th>Id</th>
      <th>Descrição</th>
      <th>Status</th>
      <th>Data de finalização</th>
      <th>Ação</th>
    </tr>
    <c:forEach items="${tarefas}" var="tarefa">
      <tr>
        <td>${tarefa.id}</td>
        <td>${tarefa.descricao}</td>
        <c:choose>
          <c:when test="${tarefa.finalizado eq true}">
            <td>Finalizado</td>
          </c:when>
          <c:otherwise>
            <td>Não finalizado</td>
          </c:otherwise>
        </c:choose>
        <td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
            pattern="dd/MM/yyyy" /></td>
        <td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
        <td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
      </tr>
    </c:forEach>
  </table>
</body>
</html>