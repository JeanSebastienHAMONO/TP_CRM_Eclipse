<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!doctype html>
<html lang="fr">

<head>
	<c:import url="enteteBootstrap.jsp" charEncoding="UTF-8" />

</head>

<body class="colorBGApplication">

    <c:import url="/WEB-INF/MenuGlobal.jsp" charEncoding="UTF-8" />

    <!-- Corps de la page -->
    <div class="row">
        <div class="col-sm-12 text-center">
            <h2>${libelleAction} d'un produit</h2>
            <hr />
        </div>

        <div class="row">

            <div class="col-sm-3">
            </div>

            <div class="col-sm-6">
            
                <c:import url="GestionMessages.jsp" charEncoding="UTF-8" />

                <div class="card alert-info mb-3 shadow rounded">
                    <div class="card-header bg-info font-weight-bold">
                        <i class="fas fa-user"></i> ${libelleAction} d'un produit <c:if test="${not empty idproduit}"> [id : <c:out value="${idproduit}" />] </c:if>
                    </div>
                    <div class="card-body">
                        <div class="col-sm-12">
                            <form action="<c:url value="/manageProduit"></c:url>" method="POST">
                                <input type="hidden" id="idproduit" name="idproduit" value='<c:out value="${idproduit}" />' />
                                <div class="form-group col-sm-12">
                                    <b>Nom</b>
                                    <span class="text-danger">&nbsp;&nbsp;${ erreurs["nom"] }</span>
                                    <input type="text" id="nom" name="nom" class="form-control" placeholder="Nom" value='<c:out value="${produit.nom}" />' maxlength="255" required/>
                                </div>
                                <br />
                                <div class="form-group col-sm-12">
                                    <b>Description</b>
                                    <input type="text" id="descrip" name="descrip" class="form-control" placeholder="Description"  value='<c:out value="${produit.description}" />' >
                                </div>
                                <br />
                                <div class="form-group col-sm-12">
                                    <b>Prix</b>
                                    <span class="text-danger">&nbsp;&nbsp;${ erreurs["prix"] }</span>
                                    <input type="text" id="prix" name="prix" class="form-control" placeholder="Prix"  value='<c:out value="${produit.prix}" />' pattern="^[0-9]{*}.[0.9][0.9]$" title="Format attendu : 999999.99" required/>
                                </div>
                                <br />
                                <hr />
                                <div class="form-group col-sm-12 text-center">
                                    <button type="submit" class="btn btn-primary">Valider</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-3">
            </div>
        </div>
    </div>
</body>

</html>