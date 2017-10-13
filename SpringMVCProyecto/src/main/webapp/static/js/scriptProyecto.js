
var modulo = angular.module("appLogin", []);

// Creación del controlador principal
var controlador = modulo.controller("appController", [
		"$scope",function($scope) {

			$scope.mensaje = "hola desde AngularJS";
	

		} ]);