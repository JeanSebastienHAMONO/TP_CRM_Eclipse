<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="fr">

<head>

<c:import url="/WEB-INF/enteteBootstrap.jsp" charEncoding="UTF-8" />

</head>

<body class="colorBGApplication">


	<c:import url="/WEB-INF/MenuGlobal.jsp" charEncoding="UTF-8" />

	<!-- Corps de la page -->
	<div class="row">
		<div class="text-center">
			<img src="<c:url value="/inc/images/img_biblio_01.jpg"></c:url>"
				class="img-fluid" alt="Ma bibliotheque">
		</div>
	</div>
</body>

</html>