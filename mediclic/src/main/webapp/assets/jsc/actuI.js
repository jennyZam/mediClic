//Con apoyo de Ingeniero Diego Rodriguez

function actualizar() {

	var baseUrl ='http://localhost:8080'
	//var getUrl = window.location;
	//var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
	
	var x= document.getElementById("invuser").value;
	var y = document.getElementById("idinv").value;
	var req = new XMLHttpRequest();
	var coincidencia = false;
	req.open('GET', baseUrl + '/listarinversor', false);
	req.send(null);
	var usu = null;
	//si se obtiene un 200 (Conexion correcta)
	if (req.status == 200)
		usu = JSON.parse(req.responseText);

	//Se verifica uno por uno si existe el inversor
	for (cont = 0; cont < usu.length; cont++) {

		if (usu[cont].usuarioInversor == x) {
			coincidencia = true
			break;
		}

		if (usu[cont].identInversor == y) {
			coincidencia = true
			break;
		}
	}
	console.log(coincidencia);
	
	if (coincidencia != false) {
		var formData = new FormData();
		formData.append("identInversor", document.getElementById("idinv").value);
		formData.append("nombreInversor", document.getElementById("invname").value);
		formData.append("emailInversor", document.getElementById("invemail").value);
		formData.append("direccionInversor", document.getElementById("invdir").value);
		formData.append("celularInversor", document.getElementById("invcel").value);
		formData.append("telefonoInversor", document.getElementById("invtel").value);
		formData.append("usuarioInversor", document.getElementById("invuser").value);
		formData.append("passwordInversor", document.getElementById("inpass").value);
		
		var xhr = new XMLHttpRequest();
		xhr.open("PUT",baseUrl+"/actualizarinversor");

		var element = document.getElementById("error");
		element.classList.add("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.remove("visually-hidden");

		document.getElementById("idinv").value = "";
		document.getElementById("invname").value = "";
		document.getElementById("invemail").value = "";
		document.getElementById("invdir").value = "";
		document.getElementById("invcel").value = "";
		document.getElementById("invtel").value = "";
		document.getElementById("invuser").value = "";
		document.getElementById("inpass").value = "";
		xhr.send(formData);
		
	} else {
		var element = document.getElementById("error");
		element.classList.remove("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.add("visually-hidden");
		document.getElementById("idinv").value = "";
		document.getElementById("invname").value = "";
		document.getElementById("invemail").value = "";
		document.getElementById("invdir").value = "";
		document.getElementById("invcel").value = "";
		document.getElementById("invtel").value = "";
		document.getElementById("invuser").value = "";
		document.getElementById("inpass").value = "";	
		}
}