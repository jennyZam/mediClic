//Con apoyo de Ingeniero Diego Rodriguez

var baseUrl = 'http://localhost:8080'
var getUrl = window.location;
//var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];

function verificar() {
	//Se trae la informacion del usuario
	var name = document.getElementById("username").value;
	//Se trae la informacion de la contraseña
	var pas = document.getElementById("userpass").value;
	//Esta es la url
	var baseurl = baseUrl + "/listarusuario";
	//creando un objeto de manipulacion de solicitudes
	var xmlhttp = new XMLHttpRequest();
	//abriendo la api
	xmlhttp.open("GET", baseurl, true);
	//funcion interna que compara la información
	xmlhttp.onreadystatechange = function() {
		//si se obtiene un 200 (Conexion correcta)
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			//Se convierte el JSON en JavaScript
			var usuarios = JSON.parse(xmlhttp.responseText);

			//Se verifica uno por uno si existe el usuario
			for (cont = 0; cont < usuarios.length; cont++) {

				//si el usuario es el correcto
				if (usuarios[cont].usuarioUsuarios == name) {
					//si la password es correcta
					if (usuarios[cont].passwordUsuarios == pas) {
						console.log("si");
						var element = document.getElementById("error");
						element.classList.add("visually-hidden");
						document.getElementById("username").value = "";
						document.getElementById("userpass").value = "";
						window.location.href = "iniciu.jsp";
						return;
					} else {
						//si la password NO esta correcta
						console.log("error usuario o password");
						var element = document.getElementById("error");
						element.classList.remove("visually-hidden");
						document.getElementById("username").value = "";
						document.getElementById("userpass").value = "";
						return;
					}
				}
			}
			//Si el usuario no existe 
			console.log("no encontrado");

			//Se quita la capacidad de ocultar el error para mostrarlo
			var element = document.getElementById("error");
			element.classList.remove("visually-hidden");
			document.getElementById("username").value = "";
			document.getElementById("userpass").value = "";
			return;
		}
	};
	//ejecutando
	xmlhttp.send();
}