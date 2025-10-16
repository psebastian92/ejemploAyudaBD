<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.Timestamp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Muro - Comentarios</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/estilos/estilo-muro.css">
</head>
<body>
	<h2>Comentarios publicados</h2>

	<%
	ResultSet conjuntoResultados = (ResultSet) request.getAttribute("conjuntoResultados");

	if (conjuntoResultados != null && conjuntoResultados.next()) {
		do {
			String autor = conjuntoResultados.getString("autor");
			String comentario = conjuntoResultados.getString("comentario");

			// 🔹 Recuperar la fecha desde la BD
			Timestamp fechaHora = conjuntoResultados.getTimestamp("fecha_hora");

			// 🔹 Crear un formato más legible para mostrar en pantalla
			String fechaFormateada = "";
			if (fechaHora != null) {
		SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy HH:mm");
		fechaFormateada = formato.format(fechaHora);
			}
	%>
	<div class="comentario">
		<div class="autor"><%=autor%></div>
		<div class="texto"><%=comentario%></div>
		<div class="fecha">
			📅
			<%=fechaFormateada%></div>
	</div>
	<%
	} while (conjuntoResultados.next());
	} else {
	%>
	<p>No hay comentarios todavía.</p>
	<%
	}
	%>


	<br>
	<a href="${pageContext.request.contextPath}/vistas/index.jsp">
		Volver al inicio </a>
</body>
</html>

