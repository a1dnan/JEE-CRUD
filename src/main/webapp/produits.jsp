<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Produits</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@include file="header.jsp"%>
	<p></p>
	<div class="container">
		<div class="card">
			<div class="card-header">Recherche des Produits</div>
			<div class="card-body">
				<form action="chercher.do" method="get">
					<label>Mot Cl� : </label> <input type="text" placeholder="exemple : Iphone, Samsung" name="motCle"
						value="${model.motCle}" />
					<button type="submit" class="btn btn-primary">Chercher</button>
				</form>
				<table class="table table-bordered table-hover mt-4">
					<tr>
						<th>ID</th>
						<th>Nom Produit</th>
						<th>Prix</th>
						<th>Cat�gorie</th>
						<th>Action</th>
					</tr>
					<c:forEach items="${model.produits}" var="p">
						<tr>
							<td>${p.idProduit }</td>
							<td>${p.nomProduit }</td>
							<td>${p.prix }</td>
							<td>${p.categorie.nomCat }</td>
							<td><a onclick="return confirm('Etes-vous s�r ?')"
								class="mr-4" href="supprimer.do?id=${p.idProduit }">
								<i class="fa-solid fa-trash-can text-danger"></i></a> <a
								href="editer.do?id=${p.idProduit }">
								<i class="fa-solid fa-pen-to-square text-warning"></i></a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
