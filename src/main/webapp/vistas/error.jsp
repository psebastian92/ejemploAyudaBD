<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error - Aplicación</title>
<!-- Se agregan los estilos -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/estilos/estilo-error.css">


</head>
<body>

    <div class="error-container">
    <!-- Capturar error del servlet -->
 
    <!-- Analizar si llega vacío o no. Si lo hace, mostrar que está todo OK. Si no, indicar el mensaje de error -->
       
        <!-- Botón para volver a la página principal -->
        <a href="${pageContext.request.contextPath}/vistas/index.jsp" class="btn-volver">Volver al inicio</a>
    </div>

</body>
</html>
