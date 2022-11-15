<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!doctype html>
<html lang="fr">

<head>
<c:import url="enteteBootstrap.jsp" charEncoding="UTF-8" />

</head>

<body class="colorBGApplication">

	<c:import url="/WEB-INF/MenuGlobal.jsp" charEncoding="UTF-8" />
	<fmt:setLocale value="fr_FR"/>

	<!-- Corps de la page -->
	<div class="row">
		<div class="col-sm-12 text-center">
			<h2>Suppression d'un produit</h2>
			<hr />
		</div>

		<div class="row">

			<div class="col-sm-3"></div>

			<div class="col-sm-6">

				<c:import url="GestionMessages.jsp" charEncoding="UTF-8" />

				<div class="card alert-warning mb-3 shadow rounded">
					<div class="card-header bg-warning font-weight-bold">
						<i class="fas fa-user"></i> Suppression d'un produit
						<c:if test="${not empty idproduit}"> [id:${idproduit}] </c:if>
					</div>
					<div class="card-body">
						<div class="col-sm-12">
							<form action="<c:url value="/deleteProduit"></c:url>" method="POST">
								<input type="hidden" id="idproduit" name="idproduit" value='<c:out value="${produit.id}" />' >
								<div class="form-group col-sm-12">
									<div class="col-sm-4">
										<b>Nom : </b>
									</div>
									<div class="col-sm-8">
										<c:out value="${produit.nom}" />
									</div>
								</div>
								<br />
								<div class="form-group col-sm-12">
									<div class="col-sm-4">
										<b>description : </b>
									</div>
									<div class="col-sm-8">
										<c:out value="${produit.description}" />
									</div>
								</div>
								<br />
								<div class="form-group col-sm-12">
									<div class="col-sm-4">
										<b>Prix : </b>
									</div>
									<div class="col-sm-8">
										<fmt:formatNumber value="${produit.prix}" type="currency"/>
									</div>
								</div>
								<c:if test="${supprimer == 'N'}">
									<br />
									<hr />
									<div class="form-group col-sm-12 text-center">

										<button type="submit" class="btn btn-primary">Supprimer</button>

									</div>
								</c:if>
							</form>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-3"></div>
		</div>
	</div>
</body>

</html>