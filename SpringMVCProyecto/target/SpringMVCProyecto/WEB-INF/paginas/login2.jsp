<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%-- Librería de etiquetas form de Srping --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%-- Librería de etiquetas core de JSTL --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html ng-app="appLogin">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<link rel='stylesheet' href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>
<title>Blog Spring TI</title>
</head>
<body ng-controller="appController">
	<%-- Incluir la pagina que contiene los enlaces --%>
	
	<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Tiempo</a>
		</div>
		<div class=""></div>
		<div></div>
	</nav>
	
	<h2>login2</h2>
	<h3>{{mensaje}}</h3>

	<%-- Importamos la librería core de JSTL --%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	
	
	

	<!-- Establecimiento del FORM -->
	
	
	<form:form id="login" modelAttribute="usuario" method="post"
		action="${peticion}">

		<table width="350px" height="120px">
			
			
			<tr>
				<td>
					<form:label path="email">Email</form:label>
				</td>
				<td>
					<%-- Enlazar caja a la propiedad nick del objeto
						 asociado al formulario --%> 
					<form:input type="email" path="email" />
				</td>
			</tr>
			<!-- CLAVE -->
			
			<tr>
				<td>
					<form:label path="clave">Clave</form:label>
				</td>
				<td>
					<%-- Enlazar caja a la propiedad pass del objeto
						 asociado al formulario --%> 
					<form:password path="clave" />
				</td>
			</tr>
			
			
			<tr>
				<td colspan="2">
					<input type="submit" value="   Login   " />
				</td>
			</tr>
			
		</table>

	</form:form>
	
	
	<h2>REGISTRO</h2>
	
	<form:form id="login" modelAttribute="usuario" method="post"
		action="${peticion}">

		<table width="350px" height="120px">
			
			<!-- USUARIO -->
			<tr>
				<td>
					<form:label path="nombre">Usuario</form:label>
				</td>
				<td>
					<%-- Enlazar caja a la propiedad nick del objeto
						 asociado al formulario --%> 
					<form:input path="nombre" />
				</td>
			</tr>
			
			<tr>
				<td>
					<form:label path="apellido">Apellido</form:label>
				</td>
				<td>
					<%-- Enlazar caja a la propiedad nick del objeto
						 asociado al formulario --%> 
					<form:input path="apellido" />
				</td>
			</tr>
			
			<!-- FECHA -->
			
			<tr>
				<td>
					<form:label path="fechaNacimiento">Fecha de Nacimiento</form:label>
				</td>
				<td>
					<%-- Enlazar caja a la propiedad pass del objeto
						 asociado al formulario --%> 
					<form:input type="date" path="fechaNacimiento" />
				</td>
			</tr>
			
			
			<!-- EMAIL-->
			
			<tr>
				<td>
					<form:label path="email">Email</form:label>
				</td>
				<td>
					<%-- Enlazar caja a la propiedad nick del objeto
						 asociado al formulario --%> 
					<form:input type="email" path="email" />
				</td>
			</tr>
			<!-- CLAVE -->
			
			<tr>
				<td>
					<form:label path="clave">Clave</form:label>
				</td>
				<td>
					<%-- Enlazar caja a la propiedad pass del objeto
						 asociado al formulario --%> 
					<form:password path="clave" />
				</td>
			</tr>
			
			
			<tr>
				<td colspan="2">
					<input type="submit" value="   Registrar   " />
				</td>
			</tr>
			
		</table>

	</form:form>
	
	<script type="text/javascript" src="webjars/angularjs/1.5.8/angular.min.js"></script>
	<script type="text/javascript" src="/resources/scriptProyecto.js"></script>
	<script src="<c:url value='/resources/scriptProyecto.js' />"></script>
	
	
</body>
</html>