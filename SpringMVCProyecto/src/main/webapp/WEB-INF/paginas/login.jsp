<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%-- Librería de etiquetas form de Srping --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%-- Librería de etiquetas core de JSTL --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no">
<link rel='stylesheet'
	href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<title>Blog Spring TI</title>
</head>
<body>
	<%-- Incluir la pagina que contiene los enlaces --%>
	<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Tiempo</a>
		</div>
	</nav>

	
	<%-- Importamos la librería core de JSTL --%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




	<div class="container">
		<c:url var="peticion" value="verificarLogin.html" />
		<div>
			<h2>LOGIN</h2>
		</div>

		<form:form id="login" class="form-horizontal" modelAttribute="usuario"
			method="post" action="verificarLogin.html">

			<div>

				<div class="form-group">
					<form:label class="control-label col-sm-2" path="email">Email</form:label>
					<div class="col-xs-3">
						<form:input class="form-control" placeholder="Introduce email" required="required"
							value="" type="email" path="email"/>
					</div>
				</div>

				<div class="form-group">
					<form:label class="control-label col-sm-2" path="clave">Clave</form:label>
					<div class="col-xs-3">
						<form:input type="password" class="form-control" required="required"
							placeholder="Introduce clave" path="clave"/>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-xs-10">
						<input type="submit" value="   Login   " />
					</div>
				</div>

			</div>
		</form:form>



		<div class="container">
			<div>
				<h2>REGISTRO</h2>
			</div>


			<form:form id="login" class="form-horizontal"
				modelAttribute="usuario" method="post" action="registro.html">

				<div>

					<div class="form-group">
						<form:label class="control-label col-sm-2" path="nombre">Nombre</form:label>
						<div class="col-xs-3">
							<form:input class="form-control" placeholder="Introduce nombre" required="required"
								path="nombre" />
						</div>
					</div>

					<!--  -->
					<div class="form-group">
						<form:label class="control-label col-sm-2" path="apellido">Apellidos</form:label>
						<div class="col-xs-3">
							<form:input class="form-control" placeholder="Introduce apellido" required="required"
								path="apellido" />
						</div>
					</div>

					<!--  -->
					<div class="form-group">
						<form:label class="control-label col-sm-2" path="fechaNacimiento">Nacimiento</form:label>
						<div class="col-xs-3">

							<form:input type="date" name="fechayhora" class="form-control" required="required"
								placeholder="Introduce Fecha de Nacimiento"
								path="fechaNacimiento" />
						</div>
					</div>


					<div class="form-group">
						<form:label class="control-label col-sm-2" path="pais">Pais</form:label>
						<div class="col-xs-3">
							
							<form:select class="form-control" path="pais">
								<form:option value="España">España</form:option>
								<form:option value="Grecia">Grecia</form:option>
								<form:option value="Francia">Francia</form:option>
								<form:option value="Alemania">Alemania</form:option>
								<form:option value="Austria">Austria</form:option>
								<form:option value="Portugal">Portugal</form:option>
							</form:select>
							
						</div>
					</div>



					<!--  -->
					<div class="form-group">
						<form:label class="control-label col-sm-2" path="email">Email</form:label>
						<div class="col-xs-3">
							<form:input class="form-control" placeholder="Introduce email" required="required"
								type="email" path="email" />
						</div>
					</div>

					<!--  -->
					<div class="form-group">
						<form:label class="control-label col-sm-2" path="clave">Clave</form:label>
						<div class="col-xs-3">
							<form:input type="password" class="form-control" required="required"
								placeholder="Introduce clave" path="clave" />
						</div>
					</div>

					<!--  -->

					<div class="form-group">
						<div class="col-sm-offset-2 col-xs-10">
							<input type="submit" class="btn btn-default"
								value="   Registrar   " />
						</div>

					</div>


				</div>
			</form:form>
		</div>



	</div>


	
	<script type="text/javascript"
		src="webjars/angularjs/1.5.8/angular.min.js"></script>
	
	<script src="webjars/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="<c:url value='/static/js/scriptProyecto.js'/>">
		
	</script>



</body>
</html>