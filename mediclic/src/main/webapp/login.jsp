<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<link rel="shortcut icon" href="assets/images/iconlogo.png"
	type="image/x-icon">
<title>Inicia Sesion</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body class="vh-100 bg-login">

	<nav class="navbar navbar-expand-lg navbar-nav-scroll navbar-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.html"> <img
				src="assets/images/iconlogo.png" alt="imagenlogo" width="90"
				height="73" class="d-inline-block align-text-top fx-1"></a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav nav-tabs">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="index.html">Inicio</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Iniciar
							Sesion</a></li>
					<li class="nav-item"><a class="nav-link" href="signup.jsp">Registrase</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>


	<div class="container-fluid h-auto bg-light w-75 p-3 mt-5 mb-3 transparent">
		<div class="row d-flex justify-content-center">
			<div class="col-md-4 align-items-center mt-5">
			<br>
			<br>
				<h1 class="h1 text-center mt-3 mb-5 til-color py-5">Inicio de Sesion</h1>
			</div>
			<div class="col-md-4 align-items-center justify-content-center">
				<div class="text-center">
					<img class="mt-0 img-fluid" src="assets/images/logo.png"
						alt="logoimg" width="10%" height="30%" />
				</div>
				<div class="card-body">
					<div class="text-center">
						<p>
							Necesita una cuenta? <a href="signup.jsp"
								class="link-success fs-5 text-decoration-underline">Registrese</a>
						</p>
					</div>
					<div id="error"
						class="alert alert-danger visually-hidden text-center"
						role="alert">Usuario o contraseña incorrecta!</div>
					<form class="justify-content-center" id="formemp">
						<div class="mb-2 mt-3">
							<label for="Inputempname" class="form-label">Usuario*</label>
							<div class="input-group">
								<div class="input-group-text">
									<i class="bi bi-person-check-fill"></i>
								</div>
								<input type="text" class="form-control" id="empname"
									name="empname" placeholder="Usuario*" required="required">
							</div>
						</div>

						<div class="mb-2">
							<label for="Inputemppass" class="form-label">Contrasena*</label>
							<div class="input-group">
								<div class="input-group-text">
									<i class="bi bi-key"></i>
								</div>
								<input type="password" class="form-control" id="emppass"
									name="emppass" placeholder="Contrasena*" required="required">
								<div class="input-group-append bg-light">
									<button id="mostrarpasswords" class="btn border border-light"
										type="button" onclick="mostrarPasswords()">
										<span class="bi bi-eye-slash-fill icons"></span>
									</button>
								</div>
							</div>
						</div>

						<div class="text-center mt-3 mb-3 px-4 mx-4">
							<button type="button" class="btn btn-success" onclick="aceptar()">
								<i class="bi bi-person-bounding-box px-2"></i>Ingresar
							</button>
						</div>
						<div class="text-center">
							<p>
								<a href="signup.jsp"
									class="link-success fs-5 text-decoration-underline">Olvido
									su contrasena?</a>
							</p>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<footer
		class="footer-color d-flex flex-wrap justify-content-between align-items-center py-3 mb-5 p-5 my-4 mt-5">
		<p
			class="text-center display-7 offset-md-1 fw-bold text-white tex-footer">
			MediClic © Copyright
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
	<script src="assets/jsc/log.js" type="text/javascript"></script>
	<script src="assets/jsc/veri.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/popper/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>