<!DOCTYPE html>
<html ng-app="appServicios">
<head>
<meta charset="UTF-8">
<title>Servicios AngularJS</title>
<link rel="stylesheet"
	href="bower_components/bootstrap/dist/css/bootstrap.css" />
</head>
<body ng-controller="appController">

	<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Tiempo</a>
		</div>
		<div class=""></div>
		<div></div>
	</nav>

	<div align="center">
		<form class="form-inline">
		
			<div class="form-group" align="right">
				
				<label for="tiempo">Ciudad : </label> <input id="tiempo"
					class="form-control" placeholder="Introduce Ciudad"
					ng-model="tiempo" type="text"  value="">
				
				<button  type="button" id="addBtn" class="btn-success" 
				ng-if="tiempo"
				ng-disabled="!tiempo"
				ng-click="ciudad(tiempo)">Enviar</button>
		
			</div>
		
		</form>
		<br/><br/>
	</div>
	<div align="center">
		<table class="table table-bordered">
			<thead>
				<tr align="center">
					<th>Ciudad</th>
					<th>Pais</th>
					<th>Descripcion</th>
					<th>Temperatura</th>
					<th>Max</th>
					<th>Min</th>
				</tr>
			</thead>

			<tbody>
				<tr ng-repeat="item in historialDatos | orderBy:'-' | limitTo:10">
					<td><h3>{{item.name}}</h3></td>
					<td><h3>{{item.country}}</h3></td>
					<td><h3>{{item.description}}</h3></td>
					<td><h3>{{item.temp}}</h3></td>
					<td><h3>{{item.temp_max}}</h3></td>
					<td><h3>{{item.temp_min}}</h3></td>
					<td><img alt="icono" ng-src="http://openweathermap.org/img/w/{{item.img}}.png"></td>
				</tr>

			</tbody>
		</table>



		
	</div>

	<!-- http://openweathermap.org/img/w/10d.png -->

	<!-- AngularJS -->
	<script type="text/javascript" src="resources/scripts/angular.min.js"></script>

	<!-- AngularJS Locale (para Español) -->


	<script type="text/javascript">
	var servicios = angular.module("appServicios", []);

	// Creación del controlador principal
	var controlador = servicios
		.controller(
			"appController",
			[
				"$scope",
				"$log",
				"$http",
				function($scope, $log, $http) {

				    $scope.historialDatos = [];

				    $scope.datos = {};
				    $scope.ciudad = function(ciudad) {
					$http(
						{
						    method : 'GET',
						    url : 'http://api.openweathermap.org/data/2.5/'
							    + 'weather?q='
							    + ciudad
							    + '&APPID=6dd35f4ea5d9da8ea644cde73c3e304e'
						})
						.success(
							function(data, status,
								headers, config) {
							    
							    $scope.datos = {
								    
								name : data.name,
								country : data.sys.country,
								weather : data.weather,
								description : data.weather[0].description,
								temp : (parseInt(data.main.temp) - 273),
								temp_min : (parseInt(data.main.temp_min) - 273),
								temp_max : (parseInt(data.main.temp_max) - 273),
								img : data.weather[0].icon
								
							    }
							    
							    $scope.insertarALista($scope.datos);
							})
						.error(
							function(datos, status,
								headers, config) {

							    alert("Error carga de datos servicio $http\n"
								    + "Código HTTP error: "
								    + status);
							});

				    }
				    
				    $scope.insertarALista = function(objeto) {

					$scope.historialDatos
						.push({
						    name : objeto.name,
						    country : objeto.country,
						    weather : objeto.weather,
						    description : objeto.description,
						    temp : objeto.temp,
						    temp_min : objeto.temp_min,
						    temp_max : objeto.temp_max,
						    img: objeto.img
						});
				    }
				    
				    $log.debug("Creado scope del controlador");

				} ]);
    </script>

</body>
</html>