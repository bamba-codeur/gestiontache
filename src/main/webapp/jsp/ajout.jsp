<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Liste des Taches</title>
</head>
<body>
<h1>Liste des Taches</h1>
<form action="<%=request.getContextPath()%>/" method="post">
  <input type="hidden" name="action" value="create">
  <label >Titre :</label>
  <input type="text" name="titre" required>
  <br>
  <label >Description :</label>
  <input type="text" name="description" required>

  <label >statut :</label>
  <input type="text" name="statut" required>

  <button type="submit">Creer</button>
</form>

<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>Titre</th>
    <th>Description</th>
    <th>Date</th>
    <th>Action</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${liste}" var="liste">
    <tr>

      <td>${liste.titre}</td>
      <td>${liste.description}</td>
      <td><fmt:formatDate value="${liste.dateEcheance}" pattern="yy-MMM-dd HH:mm:ss"/></td>
      <td>${liste.statut}</td>
      <td></td>

      <td>
        <a href="${pageContext.request.contextPath}/task?action=update&id=${liste.id}">update</a>
        <a href="${pageContext.request.contextPath}/task?action=delete&id=${liste.id}">Supprimer</a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
