<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!doctype html>
<html lang="fr">

<head>
    <c:import url="/WEB-INF/enteteBootstrap.jsp" charEncoding="UTF-8" />

    <c:import url="/WEB-INF/enteteTable.jsp" charEncoding="UTF-8"><c:param name="nomTable" value="tabProduits" /></c:import> 

</head>

<body class="colorBGApplication">

    <c:import url="/WEB-INF/MenuGlobal.jsp" charEncoding="UTF-8" />
    <fmt:setLocale value="fr_FR"/>

	<!-- Corps de la page -->
	<div class="row">
		<div class="col-sm-12 text-center">
			<h2>Gestion des produits</h2>
			<hr />
		</div>

		<div class="col-sm-12 text-center">
			<div class="col-sm-12 text-center">
				<a class="navbar-brand" href="<c:url value="./manageProduit"></c:url>">
					<button	type="button" class="btn btn-outline-success fw-bold">Ajouter Produit</button>
				</a>
				<br/>
			</div>
			<div class="col-sm-12 text-center table-responsive-sm">
				<table id="tabProduits"
					class="table table-hover table-bordered table-sm"
					style="width: 100%">
					<thead>
						<tr class="table-primary">
							<th data-sortable="true">Nom</th>
							<th class="cacheInfo" data-sortable="false">Description</th>
							<th data-sortable="true">Prix</th>
							<th data-sortable="false">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="produit" items="${requestScope['listProduits']}">
							<tr>
								<td><c:out value='${produit.nom}' /></td>
								<td class="cacheInfo"><c:out value='${produit.description}' /></td>
								<td><fmt:formatNumber value="${produit.prix}" type="currency"/></td>
								<td>
								    <a href="<c:url value="/manageProduit"><c:param name="idproduit" value="${produit.id}" /></c:url>"><button class="btn btn-info btn-sm"><i class="fas fa-edit"></i></button></a>
								    <a href="<c:url value="/deleteProduit"><c:param name="idproduit" value="${produit.id}" /></c:url>"><button class="btn btn-warning btn-sm"><i class="fas fa-trash"></i></button></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>

</html>