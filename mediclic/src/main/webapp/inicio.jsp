<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<link rel="shortcut icon" href="assets/images/iconlogo.png"
	type="image/x-icon">
<title>Inicio</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body class="min-vh-100">

	<div class="container-fluid">
		<h1 class="h1 text-center mt-1 mb-2 til-color">Inicio</h1>
	</div>
	<nav class="navbar navbar-expand-lg navbar-nav-scroll navbar-light">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse offset-md-4"
				id="navbarNavDropdown">
				<ul class="navbar-nav nav-tabs">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="inicio.jsp">Inicio</a></li>
					<li class="nav-item"><a class="nav-link"
						href="register.jsp">Registrar</a></li>
					<li class="nav-item"><a class="nav-link" href="history.jsp">Historial
							medico</a></li>
					<li class="nav-item"><a class="nav-link" href="graphics.jsp">Graficas</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="logout.jsp">Salir</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid h-auto mb-5">
		<div class="row d-flex justify-content-center mb-5">
			<div class="col-md-6 align-items-center justify-content-center">
				<div class="row mt-5">
					<div class="col-sm-4">
						<div class="w-100 mt-5">
							<div class="card-body text-left">
								<h5 class="card-title">Seleccione de las opciones lo que quiere realizar para el paciente.</h5>
							</div>
						</div>
					</div>
					<div class="col-md-8">
						<div class="card w-100">
							<img class="card-img-top" src="assets/images/img01.jpg"
								alt="imageprojects">
							<!--Foto de Karolina Grabowska: https://www.pexels.com/es-es/foto/internet-auriculares-en-linea-estetoscopio-7195084/-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer
		class="mt-auto footer-color d-flex flex-wrap justify-content-between align-items-center py-3 mb-5 p-5 my-4 mt-5">
		<p
			class="text-center display-7 offset-md-1 fw-bold text-white tex-footer">
			MediClic Â© Copyright
			<script type="text/javascript">
				copyright = new Date();
				update = copyright.getFullYear();
				document.write(update);
			</script>
			<br>Designed by Group
		</p>

		<ul class="nav col-md-4 justify-content-end">
			<li class="nav-item tex-footer"><a href="#"
				class="nav-link px-2 text-muted">Acerca de</a></li>
			<li class="nav-item tex-footer"><a href="#"
				class="nav-link px-2 text-muted">Contactenos</a></li>
		</ul>
	</footer>

	<script src="assets/jquery/jquery-3.6.0.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/popper/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>