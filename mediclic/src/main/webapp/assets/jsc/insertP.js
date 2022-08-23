//Con apoyo de Ingeniero Diego Rodriguez

function enviar() {

	var baseUrl ='http://localhost:8080'
	//var getUrl = window.location;
	//var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];

	var y = document.getElementById("proname").value;
	var req = new XMLHttpRequest();
	var coincidencia = false;
	req.open('GET', baseUrl + '/listarproyecto', false);
	req.send(null);
	var inver = null;
	//si se obtiene un 200 (Conexion correcta)
	if (req.status == 200)
		inver = JSON.parse(req.responseText);

	//Se verifica uno por uno si existe el inversor
	for (cont = 0; cont < inver.length; cont++) {

		if (inver[cont].nombreProyecto == y) {
			coincidencia = true
			break;
		}
	}
	console.log(coincidencia);

	if (coincidencia == false) {

		var formData = new FormData();
		formData.append("nombreProyecto", document.getElementById("proname").value);
		formData.append("descripcionProyecto", document.getElementById("prodes").value);
		formData.append("categoriaProyecto",  document.getElementById("procate").value);
		formData.append("valorProyecto", document.getElementById("proval").value);
		formData.append("tiempoProyecto", document.getElementById("protiem").value);
		formData.append("colaboradorPro", document.getElementById("procol").value);
		var xhr = new XMLHttpRequest();
		xhr.open("POST", baseUrl + "/registrarproyecto");

		var element = document.getElementById("error");
		element.classList.add("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.remove("visually-hidden");

		document.getElementById("proname").value = "";
		document.getElementById("prodes").value = "";
		document.getElementById("procate").value = "";
		document.getElementById("proval").value = "";
		document.getElementById("protiem").value = "";
		document.getElementById("procol").value = "";
		xhr.send(formData);
	} else {
		var element = document.getElementById("error");
		element.classList.remove("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.add("visually-hidden");
		document.getElementById("proname").value = "";
		document.getElementById("prodes").value = "";
		document.getElementById("procate").value = "";
		document.getElementById("proval").value = "";
		document.getElementById("protiem").value = "";
		document.getElementById("procol").value = "";
	}
}