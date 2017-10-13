# proyecto-spring-angularjs

Tecnologias utilizadas:
  - Java
  - Spring
  - AngularJS
  - MongoDB Atlas
  
  El proyecto esta hecho en MAVEN, todas las dependencias necesarias en el pom.xml.
  Al hacer la importacion  habra que seleccionar en eclipse como proyecto maven, por otra parte haríaa falta tener apache tomcat 8.0.X
  para poder poder ejecutar en el servidor local

MONGODB ATLAS
Se ha creado la BBDD no relaciona "bsdEnterprise", tiene la coleccion "usuarios".
Actualmente tiene a 3 usuarios con la siguiente informacion: 


{                                                                                                                               "_id" : ObjectId("59e0513a0b1c30146c35eb54"),

"nombre" : "Josue",

"apellido" : "Poma",

"fecha" : "15/04/1993", 

"pais" : "EspaÃ±a",  
"email" : "jpm1993dxv@hotmail.com",    
"clave" : "abcd"   
}             
{                                                                                                                               "_id" : ObjectId("59e056460b1c30146cb341c8"),   
"nombre" : "Juan",                        
"apellido" : "Baquero",               
"fecha" : "14/06/98",               
"pais" : "Alemania",               
"email" : "juanbaquero@gmail.com",           
"clave" : "admin"    
}          
{                 
"_id" : ObjectId("59e0635d0b1c3002bc55e803"),  
"nombre" : "Antonio",               
"apellido" : "Garrido Gonzales",   
"fecha" : "14/03/91",             
"pais" : "Austria",                
"email" : "antoniogarrido@gmail.com", 
"clave" : "garrido"   
}                                                                                                                       


Esta informacion es importante a la hora de acceder a la aplicacion, en caso de loggearse, o tambien registrarse.
La aplicacion no admitira que haya emails repetidos.
