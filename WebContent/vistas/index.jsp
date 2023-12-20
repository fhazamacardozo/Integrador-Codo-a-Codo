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
<title>Conferencia BS AS</title>
</head>
<body>

	<!-- navbar -->
	<header>
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
								aria-current="page" href="#">La conferencia</a></li>

							<li class="nav-item"><a class="nav-link" href="#orador">Los
									oradores</a></li>

							<li class="nav-item"><a class="nav-link" href="#lugarfecha">El
									lugar y la fecha</a></li>

							<li class="nav-item"><a class="nav-link" href="#serorador">Conviértete
									en orador</a></li>

							<li class="nav-item"><a href="FrontController?accion=registrar"
								class="nav-link link-compra">Comprar tickets</a></li>
							<li class="nav-item"><a href="FrontController?accion=backoffice"
								class="nav-link text-warning">Back Office</a></li>
						</ul>

					</div>
				</div>
			</nav>
		</div>
	</header>
	<main>
		<!--Carrousel (Imagenes y texto)-->
		<div id="carouselSlidesOnly"
			class="carousel slide position-relative d-flex align-items-center justify-content-end"
			data-bs-ride="carousel">
			<div class="carousel-inner imgCarousel">
				<div class="carousel-item active">
					<img src="img/ba1.jpg" class="d-block w-100 opacidad"
						alt="Buenos Aires 1">
				</div>
				<div class="carousel-item">
					<img src="img/ba2.jpg" class="d-block w-100 opacidad"
						alt="Buenos Aires 2">
				</div>
				<div class="carousel-item">
					<img src="img/ba3.jpg" class="d-block w-100 opacidad"
						alt="Buenos Aires 3">
				</div>
			</div>
			<div
				class="position-absolute text-end col-md-6 col-12 text-light px-5">
				<div class="d-none d-md-block pt-5 mt-5">
					<h1>Conf Bs As</h1>
					<p>Bs As llega por primera vez a Argentina. Un evento para
						compartir con nuestra comunidad el conocimiento y experiencia de
						los expertos que están creando el futuro de Internet. Ven a
						conocer a miembros del evento, a otros estudiantes de Codo a Codo
						y los oradores de primer nivel que tenemos para ti. ¡Te esperamos!
					</p>
				</div>
				<div class="pt-1 d-grid gap-2 d-md-block">
					<button onclick="location.href='#oradores'" type="button"
						class="btn btn-outline-light">Quiero ser orador</button>
					<button onclick="location.href='tickets.jsp'" type="button"
						class="btn colorverde text-light btn-success">Comprar
						tickets</button>
				</div>
			</div>
		</div>

		<!-- cards con oradores -->
		<section id="orador">
			<h2 class="text-center text-uppercase">
				<span class="fs-6 fw-normal">Conoce a los</span>
			</h2>
			<h2 class="text-center text-uppercase">Oradores</h2>
		</section>
		<section class="card-group row">
			<div class="row justify-content-center contenedorOradores">
				<div class="col-lg-3 col-md-5 d-flex justify-content-center">
					<div class="card h-100" style="width: 18rem">
						<img src="img/steve.jpg" class="card-img-top" alt="Steve Jobs" />
						<div class="card-body text-start">
							<div class="contenedor-lenguajes">
								<a href="#" class="btn btn-warning fw-bold lenguajes">JavaScript</a>
								<a href="#" class="btn btn-primary fw-bold text-white lenguajes">React</a>
							</div>

							<h5 class="card-title text-start">Steve Jobs</h5>
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Delectus quisquam dolorum accusamus dicta
								necessitatibus neque ullam dolores id, voluptatum natus!</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-5 d-flex justify-content-center">
					<div class="card h-100" style="width: 18rem">
						<img src="img/bill.jpg" class="card-img-top" alt="Bill Gates" />

						<div class="card-body">
							<div class="contenedor-lenguajes">
								<a href="#" class="btn btn-warning fw-bold lenguajes">JavaScript</a>
								<a href="#" class="btn btn-primary fw-bold text-white lenguajes">React</a>
							</div>
							<h5 class="card-title text-start">Bill Gates</h5>
							<p class="card-text">Lorem ipsum dolor sit amet consectetur
								adipisicing elit. Eius nisi quis impedit consectetur
								consequuntur ducimus repellat perferendis accusantium itaque
								sed!</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-5 d-flex justify-content-center">
					<div class="card h-100" style="width: 18rem">
						<img src="img/ada.jpeg" class="card-img-top" alt="Ada Lovelace" />

						<div class="card-body">
							<div class="contenedor-lenguajes">
								<a href="#" class="btn btn-secondary fw-bold lenguajes">Negocios</a>
								<a href="#" class="btn btn-danger fw-bold text-white lenguajes">Startups</a>
							</div>
							<h5 class="card-title text-start">Ada Lovelace</h5>
							<p class="card-text">Lorem ipsum dolor sit amet consectetur
								adipisicing elit. Alias maiores eligendi sequi, quis assumenda
								dignissimos dicta veniam saepe beatae animi!</p>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- card horizontal -->
		<section id="lugarfecha"
			class="container-fluid p-0 d-flex gap-1 text-white mt-4 align-items-stretch">
			<div class="col col-lg-6 col-md-12 col-sm-12">
				<img src="img/honolulu.jpg" class="img-fluid" alt="Honolulu">
			</div>
			<div class="col col-lg-6  col-md-12 col-sm-12 bg-dark p-3">
				<h5 class="card-title">Bs As - Octubre</h5>
				<p class="card-text">
					Buenos Aires es la provincia y la localidad más grande de
					Argentina. En los Estados Unidos, Honolulu es la más sureña de
					entre las principales ciudades estadounidenses. Aunque el nombre de
					Honolulu se refiere al área urbana en la costa sureste de la isla
					de Oahu , la ciudad y el condado de Honolulu han formado una
					ciudad-condado consolidada que cubre toda la ciudad
					(aproximadamente 600 km<sup>2</sup> de superficie).
				</p>
				<button type="button" class="btn btn-outline-light">Conocé
					más</button>
			</div>
		</section>
		<!-- formulario -->
		<section id="serorador">
			<div id="oradores" class="text-center">
				<p class="mb-1 text-small">Conviértete en un</p>
				<h2 class="mb-2">ORADOR</h2>
			</div>
			<div class="d-flex justify-content-center">
				<div class="w-auto">
					<p class="mb-1 text-small">
						Anotate como orador para dar una <a class="text-black" href="#">charla
							ignite</a>. Cuéntanos de qué quieres hablar.
					</p>
					<form class="w-100">
						<div class="row">
							<div class="mb-3 col-6">
								<input type="text" class="form-control" id="inputNombre"
									placeholder="Nombre" required>
							</div>
							<div class="mb-3 col-6">
								<input type="email" class="form-control" id="inputApellido"
									placeholder="Apellido" required>
							</div>
						</div>
						<div>
							<textarea class="form-control mb-2 " id="inputTema" rows="4"
								placeholder="Sobre qué quieres hablar?" required></textarea>
							<div class="form-text mb-3">Recuerda incluir un título para
								tu charla.</div>
						</div>

						<button type="submit" class="btn btn-success w-100">Enviar</button>
					</form>
				</div>
			</div>
			<br>
		</section>
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
	<!-- script bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

</body>
</html>