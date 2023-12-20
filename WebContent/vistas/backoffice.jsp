<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="clases.Ticket"%>
<%@page import="clases.TicketDAO"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/style.css">
<title>Back Office</title>
</head>
<body>
	<div class="container">
		<h1 class="text-primary">Panel de tickets</h1>
		<div class="row">
			<table class="table table-striped">
				<thead>
					<th>ID VENTA</th>
					<th>NOMBRE</th>
					<th>APELLIDO</th>
					<th>MAIL</th>
					<th>CANTIDAD</th>
					<th>TIPO</th>
					<th>TOTAL</th>
					<th>ELIMINAR</th>
				</thead>
				<%
				List<Ticket> resultado = null;
				TicketDAO ticket = new TicketDAO();
				resultado = ticket.listarTickets();
				int totalTickets = 0;

				for (int i = 0; i < resultado.size(); i++) {
					String rutaEliminar = "FrontController?accion=eliminar&id=" + resultado.get(i).getId();
					String tipoTicket = "";

					switch (resultado.get(i).getTipo_ticket()) {
					case 1:
						tipoTicket = "Estudiante";
						break;

					case 2:
						tipoTicket = "Trainee";
						break;

					case 3:
						tipoTicket = "Junior";
						break;
					}
				%>
				<tr>
					<td><%=resultado.get(i).getId()%></td>
					<td><%=resultado.get(i).getNombre()%></td>
					<td><%=resultado.get(i).getApellido()%></td>
					<td><%=resultado.get(i).getMail()%></td>
					<td><%=resultado.get(i).getCantidad()%></td>
					<td><%=tipoTicket%></td>
					<td><%=resultado.get(i).getTotal_facturado()%></td>
					<td class="text-center"><a href=<%=rutaEliminar%>>X</a></td>
				</tr>
				<%
				totalTickets += resultado.get(i).getTotal_facturado();
				}
				%>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td class="text-danger"><%=totalTickets%></td>
					<td></td>
				</tr>
			</table>
			<a class="btn btn-success col-2 m-2"
				href="FrontController?accion=volver">Volver</a>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script src="../js/scriptTicket.js"></script>

</body>


</html>