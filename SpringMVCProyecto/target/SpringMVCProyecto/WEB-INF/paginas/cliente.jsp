<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog Spring TI</title>
</head>
<body>
	<%-- Incluir la pagina que contiene los enlaces --%>
	<jsp:include page="cabecera.jsp" />

	<h2>Detalles Publicación</h2>

	<%-- Importamos la librería core de JSTL --%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<div>
		<c:out value="${publicacion.mensaje}"/>
		<br/>
		<c:out value="${publicacion.descripcion}"/>
	</div>
	<span>
		<c:out value="${publicacion.fecha}"/>
	</span>
</body>
</html>