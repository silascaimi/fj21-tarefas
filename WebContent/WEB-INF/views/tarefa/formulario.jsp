<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adicionar tarefas</title>
</head>
<body>
  <h3>Adicionar tarefas</h3>
  <form action="adicionaTarefa" method="post">
    Descri��o: <br />
    <textarea name="descricao" rows="5" cols="100"></textarea>
    <br /> <input type="submit" value="Adicionar">
  </form>
</body>
</html>