//Con apoyo de Ingeniero Diego Rodriguez

function llevar() {

	var baseUrl ='http://localhost:8080'
	//var getUrl = window.location;
	//var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];

	var y = document.getElementById("iduser").value;
	var req = new XMLHttpRequest();
	var coincidencia = false;
	req.open('GET', baseUrl + '/listarusuario', false);
	req.send(null);
	var emp = null;
	//si se obtiene un 200 (Conexion correcta)
	if (req.status == 200)
		emp = JSON.parse(req.responseText);

	//Se verifica uno por uno si existe el inversor
	for (cont = 0; cont < emp.length; cont++) {

		if (emp[cont].cedulaUsuarios == y) {
			coincidencia = true
			break;
		}
	}
	console.log(coincidencia);

	if (coincidencia == false) {
		var formData = new FormData();
		formData.append("cedulaUsuarios", document.getElementById("iduser").value);
		formData.append("nombreUsuarios", document.getElementById("username").value);
		formData.append("emailUsuarios", document.getElementById("useremail").value);
		formData.append("celularUsuarios", document.getElementById("usertel").value);
		formData.append("usuarioUsuarios", document.getElementById("user").value);
		formData.append("passwordUsuarios", document.getElementById("userpass").value);
		var xhr = new XMLHttpRequest();
		xhr.open("POST", baseUrl + "/registrarusuario");

		var element = document.getElementById("error");
		element.classList.add("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.remove("visually-hidden");

		document.getElementById("iduser").value = "";
		document.getElementById("username").value = "";
		document.getElementById("useremail").value = "";
		document.getElementById("usertel").value = "";
		document.getElementById("user").value = "";
		document.getElementById("userpass").value = "";
		xhr.send(formData);
	} else {
		var element = document.getElementById("error");
		element.classList.remove("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.add("visually-hidden");
		document.getElementById("iduser").value = "";
		document.getElementById("username").value = "";
		document.getElementById("useremail").value = "";
		document.getElementById("usertel").value = "";
		document.getElementById("user").value = "";
		document.getElementById("userpass").value = "";
	}
}