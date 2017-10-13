
var moduloAngular = angular.module("appLogin", []);

// Creación del controlador principal
var controlador = moduloAngular.controller("appController", [
		"$scope",function($scope) {

			$scope.mensaje = "hola desde AngularJS";
	

		} ]);