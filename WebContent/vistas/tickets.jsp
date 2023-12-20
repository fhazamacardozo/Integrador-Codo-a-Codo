<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<title>Tickets</title>
</head>
<body>
	<header>
		<!-- navbar -->
		<div>
			<nav class="navbar navbar-expand-lg bg-dark border-bottom px-5"
				data-bs-theme="dark">
				<div class="container-fluid">
					<a class="navbar-brand" href="#"> <img class="imgLogo"
						src="img/codoacodo.png"> Conf Bs As
					</a>

					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0 ">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="index.jsp">La conferencia</a></li>

							<li class="nav-item"><a class="nav-link" href="#">Los
									oradores</a></li>

							<li class="nav-item"><a class="nav-link" href="#">El
									lugar y la fecha</a></li>

							<li class="nav-item"><a class="nav-link" href="#">Conviértete
									en orador</a></li>
						</ul>

					</div>
				</div>
			</nav>
		</div>
	</header>
	<main>
		<!-- cards precios -->
		<div class="d-flex justify-content-center mt-3">
			<div class="w-auto row">
				<!-- Card 1 -->
				<div class="col card border-primary mx-1 mb-3 rounded-0 p-0"
					style="max-width: 18rem;">
					<div class="card-body">
						<h5 class="card-title text-center">Estudiante</h5>
						<p class="card-text text-center">Tiene un descuento</p>
						<h5 class="text-center">80%</h5>
						<p class="text-center small text-body-secondary ">*presentar
							documentacion</p>
					</div>
				</div>
				<!-- Card 2 -->
				<div class="col card border-info mx-1 mb-3 rounded-0 p-0"
					style="max-width: 18rem;">
					<div class="card-body">
						<h5 class="card-title text-center">Trainee</h5>
						<p class="card-text text-center">Tiene un descuento</p>
						<h5 class="text-center">50%</h5>
						<p class="text-center small text-body-secondary ">*presentar
							documentacion</p>
					</div>
				</div>
				<!-- Card 3 -->
				<div class="col card border-warning mx-1 mb-3 rounded-0 p-0"
					style="max-width: 18rem;">
					<div class="card-body">
						<h5 class="card-title text-center">Junior</h5>
						<p class="card-text text-center">Tiene un descuento</p>
						<h5 class="text-center">15%</h5>
						<p class="text-center small text-body-secondary ">*presentar
							documentacion</p>
					</div>
				</div>
			</div>

		</div>
		<br>

		<!-- formulario -->
		<section>
			<div class="text-center">
				<p class="mb-1 text-small">VENTA</p>
				<h2 class="mb-2">VALOR DE TICKET $200</h2>
			</div>
		</section>
		<section>
			<div class="d-flex justify-content-center">
				<div class="w-auto">
					<form action="FrontController?accion=insertar" method="post"
						class="w-100">
						<div class="row mb-3">
							<div class="col-6">
								<input type="text" name="nombre" class="form-control"
									id="inputNombre" placeholder="Nombre" required>
							</div>
							<div class="col-6">
								<input type="text" name="apellido" class="form-control"
									id="inputApellido" placeholder="Apellido" required>
							</div>
						</div>

						<div>
							<input type="email" name="mail" class="form-control mb-3"
								id="inputCorreo" placeholder="Correo" required>
						</div>

						<div class="row mb-3">
							<div class="col-6">
								<label for="inputCantidad">Cantidad</label> <input type="number"
									class="form-control" id="inputCantidad" placeholder="Cantidad"
									name="cantidad" min="0" required>
							</div>
							<div class="col-6">
								<label for="selectCategoria">Categoría</label> <select
									class="form-select" id="selectCategoria" aria-label="categ"
									name="tipo_ticket">
									<option value="1">Estudiante</option>
									<option value="2">Trainee</option>
									<option value="3">Junior</option>
								</select>
							</div>
						</div>

						<div class="mb-3">
							<input type="text" class="form-control bg-primary-subtle"
								id="inputTotal"  name="total" value="Total a pagar: $" disabled>
						</div>

						<div class="row">
							<div class="col-4">
							<button class="btn btn-warning col-2 m-2">
								<a href="FrontController?accion=volver">Volver</a>
									</button>
							</div>
							<div class="col-4">
								<button id="btnBorrar"
									class="btn btn-success w-100 ">Borrar</button>
							</div>
							<div class="col-4">
								<button type="submit" id="btnResumen"
									class="btn btn-success w-100"><a>Comprar</a></button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>
		<br>
	</main>
	<!-- footer -->
	<footer>
		<ul class="nav justify-content-center align-items-center py-3 ">
			<li class="nav-item"><a class="nav-link text-white" href="#">Preguntas
					<br> Frecuentes
			</a></li>

			<li class="nav-item"><a class="nav-link text-white" href="#">Contáctanos</a>
			</li>

			<li class="nav-item"><a class="nav-link text-white" href="#">Prensa</a>
			</li>

			<li class="nav-item"><a class="nav-link text-white" href="#">Conferencias</a>
			</li>

			<li class="nav-item"><a class="nav-link text-white" href="#">Términos
					y <br> condiciones
			</a></li>

			<li class="nav-item"><a class="nav-link text-white" href="#">Privacidad</a>
			</li>

			<li class="nav-item"><a class="nav-link text-white" href="#">Estudiantes</a>
			</li>
		</ul>
	</footer>
	<!-- script ticket -->
	<script src="js/scriptTicket.js"></script>
	<!-- script bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

</body>
</html>