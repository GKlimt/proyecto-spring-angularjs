<h1>Bienvenido a Blog-App</h1>

<%-- Importamos la librería core de JSTL --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- Generamos los enlaces de la aplicación --%>
<a href="<c:url value='clientes' />">Publicaciones</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<c:url value='/clientes/nuevo' />">Nueva Publicación</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<h1>Capullo has fallado</h1>