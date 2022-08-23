//Con apoyo de Ingeniero Diego Rodriguez

function llevar() {

	var baseUrl ='http://localhost:8080'
	//var getUrl = window.location;
	//var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];

	var y = document.getElementById("idemp").value;
	var req = new XMLHttpRequest();
	var coincidencia = false;
	req.open('GET', baseUrl + '/listaremprendedor', false);
	req.send(null);
	var emp = null;
	//si se obtiene un 200 (Conexion correcta)
	if (req.status == 200)
		emp = JSON.parse(req.responseText);

	//Se verifica uno por uno si existe el emprendedor
	for (cont = 0; cont < emp.length; cont++) {

		if (emp[cont].numeroIdEmprendedor == y) {
			coincidencia = true
			break;
		}
	}
	console.log(coincidencia);

	if (coincidencia == false) {
		var formData = new FormData();
		formData.append("numeroIdEmprendedor", document.getElementById("idemp").value);
		formData.append("nombreEmprendedor", document.getElementById("empname").value);
		formData.append("emailEmprendedor", document.getElementById("empemail").value);
		formData.append("direccionEmprendedor", document.getElementById("empdir").value);
		formData.append("celularEmprendedor", document.getElementById("emptel").value);
		formData.append("usuarioEmprendedor", document.getElementById("empuser").value);
		formData.append("passwordEmprendedor", document.getElementById("emppass").value);
		var xhr = new XMLHttpRequest();
		xhr.open("POST", baseUrl + "/registraremprendedor");

		var element = document.getElementById("error");
		element.classList.add("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.remove("visually-hidden");

		document.getElementById("idemp").value = "";
		document.getElementById("empname").value = "";
		document.getElementById("empemail").value = "";
		document.getElementById("empdir").value = "";
		document.getElementById("emptel").value = "";
		document.getElementById("empuser").value = "";
		document.getElementById("emppass").value = "";
		xhr.send(formData);
	} else {
		var element = document.getElementById("error");
		element.classList.remove("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.add("visually-hidden");
		document.getElementById("idemp").value = "";
		document.getElementById("empname").value = "";
		document.getElementById("empemail").value = "";
		document.getElementById("empdir").value = "";
		document.getElementById("emptel").value = "";
		document.getElementById("empuser").value = "";
		document.getElementById("emppass").value = "";
	}
}