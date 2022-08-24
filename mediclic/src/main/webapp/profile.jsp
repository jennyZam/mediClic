<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<link rel="shortcut icon" href="assets/images/iconlogo.png" type="image/x-icon">
<title>Perfil</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body class="min-vh-100">

	<div class="container-fluid">
		<h1 class="h1 text-center mt-1 mb-2 til-color">Datos de sus
			familiares</h1>
	</div>
	<nav class="navbar navbar-expand-lg navbar-nav-scroll navbar-light">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse offset-md-10"
				id="navbarNavDropdown">
				<ul class="navbar-nav nav-tabs">
					<li class="nav-item"><a class="nav-link" href="logout.jsp">Salir</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container h-auto mt-5 mb-5">
		<div class="row">
			<div class="col col-lg-4 border-end border-dark mb-3">
				<h1 class="border-bottom border-dark text-center mb-5 p-4">
					<i class="bi bi-person-circle fs-1"></i>
				</h1>
				<p class="mt-5 text-left">
					Nombre: <br> Email: <br> Responsable del Hogar:
				</p>
			</div>
			<div class="col mt-3">
				<div class="accordion" id="accordionPanelsStayOpenExample">
					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingOne">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseOne"
								aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
								Cliente</button>
						</h2>
						<div id="panelsStayOpen-collapseOne"
							class="accordion-collapse collapse show"
							aria-labelledby="panelsStayOpen-headingOne">
							<div class="accordion-body">
								<strong>Nombre:</strong>
								<p>
									<br> Genero: <br> Fecha de nacimiento: <br>
									Edad: <br> Parentesco:
								</p>
								<div class="text-center">
									<a class="btn btn-success mx-4 px-4" type="submit"
										href="inicio.jsp"><i class="bi bi-check2-circle px4"></i>Seleccionar
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseTwo"
								aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
								Nombre conyuge</button>
						</h2>
						<div id="panelsStayOpen-collapseTwo"
							class="accordion-collapse collapse"
							aria-labelledby="panelsStayOpen-headingTwo">
							<div class="accordion-body">
								<strong>Nombre:</strong>
								<p>
									<br> Genero: <br> Fecha de nacimiento: <br>
									Edad: <br> Parentesco:
								</p>
								<div class="text-center">
									<a class="btn btn-success mx-4 px-4" type="submit"
										href="inicio.jsp"><i class="bi bi-check2-circle px4"></i>Seleccionar
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingThree">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseThree"
								aria-expanded="false"
								aria-controls="panelsStayOpen-collapseThree">Hijo/a</button>
						</h2>
						<div id="panelsStayOpen-collapseThree"
							class="accordion-collapse collapse"
							aria-labelledby="panelsStayOpen-headingThree">
							<div class="accordion-body">
								<strong>Nombre:</strong>
								<p>
									<br> Genero: <br> Fecha de nacimiento: <br>
									Edad: <br> Parentesco:
								</p>
								<div class="text-center">
									<a class="btn btn-success mx-4 px-4" type="submit"
										href="inicio.jsp"><i class="bi bi-check2-circle px4"></i>Seleccionar
									</a>
								</div>
							</div>
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
			MediClic ÃÂ© Copyright
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