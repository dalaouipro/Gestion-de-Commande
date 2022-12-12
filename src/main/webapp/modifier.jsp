<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="entities.Commande" %>
<!DOCTYPE html>
<html>
<head>
	<link
		rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
		crossorigin="anonymous"
	>
	<meta charset="ISO-8859-1">
	<title>Modifier Commande</title>
</head>
<body>
<%Commande cmd = (Commande) request.getAttribute("cmd");%>
<h1 class="d-flex justify-content-center">Modifier Commande</h1>
<div class="container m-auto">
<form action="ModifierCmdExcServlet" method="get">
      <input type="hidden" value="<%=cmd.get_id()%>" name="_id"/>
      <div class="form-group">
        <label for="article">Article :</label>
        <input type="text" name="article" class="form-control" id="article" placeholder="article" value="<%=cmd.getArticle()%>">
      </div>
      <div  class="form-group">
        <label for="qte">qte :</label>
        <input type="text" class="form-control" id="qte" name="qte" placeholder="qte" value="<%=cmd.getQte()%>">
      </div>
      <div  class="form-group">
        <label for="prix_unit">Prix_unit :</label>
        <input type="text" class="form-control" id="prix_unit" name="prix_unit" placeholder="prix_unit" value="<%=cmd.getPrix_unit()%>">
      </div>
      <div  class="form-group">
        <label for="prix_total">Prix_total :</label>
        <input type="text" class="form-control" id="prix_total" placeholder="prix_total" name="prix_total" value="<%=cmd.getPrix_total()%>">
      </div>
      <div  class="form-group">
        <label for="client">Client :</label>
        <input type="text" class="form-control" id="client" name="client" placeholder="client" value="<%=cmd.getClient()%>">
      </div>
      <button class="btn btn-primary" type="submit">Sauvegarder</button>
    </form>
    </div>
</body>
</html>