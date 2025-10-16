<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Red Social - Promo 27</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/estilos/estilo-index.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
	<h1>Muro de la Promo 27</h1>
	<form action="${pageContext.request.contextPath}/AltaServlet"
		method="post">
		<label>Tu nombre:</label><br> <input type="text" name="autor"
			required><br>
		<br> <label>Comentario:</label><br>
		<textarea name="comentario" rows="4" required></textarea>
		<br>
		<br>
		<button type="submit">Publicar</button>
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/LeerServlet"> <!-- agregar contextPath -->
		<i class="fas fa-comment-dots"></i> Ver comentarios
	</a>
</body>
</html>
