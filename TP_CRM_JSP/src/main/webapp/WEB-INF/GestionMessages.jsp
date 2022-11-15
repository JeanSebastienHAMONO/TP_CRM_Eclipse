<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${not empty message}">
	<div class="alert alert-success text-center" role="alert">
		${message}
	</div>
</c:if>
<c:if test="${not empty messageErreur}">
	<div class="alert alert-danger" role="alert">
		${messageErreur}
	</div>
</c:if>
