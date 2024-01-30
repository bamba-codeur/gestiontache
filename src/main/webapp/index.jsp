<%--
  Created by IntelliJ IDEA.
  User: BAMBA
  Date: 24/10/2023
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Formulaire Ajout</title>

  <%--  <link rel="stylesheet" type="text/css"--%>
  <%--        href="<%=request.getContextPath() %>/css/bootstrap/css/bootstrap.min.css">--%>
  <%--  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css">--%>
</head>
<body>
<div class="container">
  <div><h1>Pages Client</h1></div>
  <div class="row">
    <div class="col-md-6 col-md-offset-2">
      <form action="<%=request.getContextPath()%>/task" method="post">
        <div class="form-group">
          <label>Titre:</label> <input type="text" name="titre" class="form-control">
        </div >
        <div class="form-group">
          <label>Description :</label> <input type="text" name="description" class="form-control">
        </div>
        <%--        <div class="form-group">--%>
        <%--          <label>Status :</label> <input type="text" name="status" class="form-control">--%>
        <%--        </div>--%>
        <%--        <div class="form-group">--%>
        <%--          <label>Date Echeance :</label> <input type="datetime-local" name="age" class="form-control">--%>
        <%--        </div>--%>
        <div><input type="submit" value="Enregistrer" class="btn btn-success"></div>
      </form>
    </div>
    <table class="table table-striped">

      <tr>
        <th>Titre :</th><th>Description :</th><th>date Echeanche</th><th>Status:</th>
      </tr>
      <c:forEach items="${liste}" var="liste">
        <tr>
          <td>${liste.titre}</td>
          <td>${liste.description}</td>
          <td>${liste.dateEcheance}</td>
          <td>${liste.statut}</td>
          <td><a href="modifier?id=${liste.id}"><button class="btn btn-primary">update</button></a></td>
          <td><a href="supprimer?id=${liste.id}"><button class="btn btn-primary">supprimer</button></a></td>
        </tr>
      </c:forEach>

    </table>
  </div>
  <div>

  </div>
</div>

</body>
</html>
