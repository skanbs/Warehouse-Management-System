<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@include file="header.jsp"%>
	<p></p>
	<div class="container">
		<div class="card">
			<div class="card-header">Produktsuche</div>
			<div class="card-body">
				<form action="chercher.do" method="get">
					<label>Schlusselwort</label> <input type="text" name="motCle"
						value="${model.motCle}" />
					<button type="submit" class="btn btn-primary">Suchen</button>
				</form>
				<table class="table table-striped">
					<tr>
						<th>ID</th>
						<th>Produktname</th>
						<th>Preis</th>
					</tr>
					<c:forEach items="${model.produits}" var="p">
						<tr>
							<td>${p.idProduit }</td>
							<td>${p.nomProduit }</td>
							<td>${p.prix }</td>
							<td><a onclick="return confirm('Sind Sie Sicher ?')"
								href="supprimer.do?id=${p.idProduit }">Loeschen</a></td>
							<td><a href="editer.do?id=${p.idProduit }">Edit</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<br></br>
	<a style="margin-left: 38px;" href="login.jsp" class="btn btn-primary">Abmelden</a>
</body>
</html>