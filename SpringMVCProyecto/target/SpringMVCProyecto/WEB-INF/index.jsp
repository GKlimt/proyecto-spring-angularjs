<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<div class="panel" ng-cloak ng-controller="mainController">

		<!-- 
			Atributo de form => novalidate. No validar el 
			formulario por parte del navegador. Lo hacemos con
			AngularJS mediante la directiva ng-submit. Asociamos
			método del scope que se utliza
		 -->
		<form name="datos" novalidate="novalidate" ng-submit="enviar(usuario)">

			<label for="nombre">Nombre:</label> 
				<input type="text" name="nombre"
				id="nombre" required="required" 
				ng-model="usuario.nombre"/> <br />
			<br /> <label for="email">Email:</label> 
				<input type="email"
				name="email" id="email" required="required"
				ng-model="usuario.email" /> <br />
			<br />

			<!-- 
				Atributo $invalid => devuelve true si el
				formulario no es válido
				Utilizamos conjuntamente con la directiva
				ng-disabled para deshabilitar un control
				dependiendo de condicion
			 -->
			<button type="submit" ng-disabled="datos.$invalid">Enviar</button>

			<br />
			<br />

			<div>
				Mensaje {{mensaje}}
				<div>
					<!-- 
						Atributo $valid => devuelve true si el
						formulario es válido
					 -->
					Formulario validado {{datos.$valid ? "Si" : "No"}}
				</div>
			</div>
		</form>

	</div>
	
	<script type="text/javascript" href="resources/scriptProyecto.js"></script>
	

	
</body>
</html>