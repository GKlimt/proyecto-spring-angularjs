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

	<h2>Listado de Publicaciones</h2>

	<%-- Importamos la librería core de JSTL --%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%-- Iterar sobre la lista de publicaciones que viene en el
	atributo publicaciones del modelo asociado a la vista
	objeto Model del parametro del me´todo de negocio del
	controlador --%>
	<ul>
		<c:forEach items="${publicaciones}" var="publicacion">
			<li>
				<div>
					<c:out value="${publicacion.mensaje}" />
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="<c:url value='/publicaciones/${publicacion.id}' />">Detalles</a>
				</div>
				<span>
					<c:out value="${publicacion.fecha}" />
				</span>
			</li>
		</c:forEach>
	</ul>
</body>
</html>