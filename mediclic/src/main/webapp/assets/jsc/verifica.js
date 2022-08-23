$(document).ready(function() {
	$('#tabl').dataTable({
		ajax: {
			url: "http://localhost:8080/listarinversor",
			dataSrc: function(json) {
				return json;
			},
		},
		columns: [
			{ data: "nombreInversor" },
			{ data: "emailInversor" },
			{ data: "direccionInversor" },
			{ data: "celularInversor" },	
			{ data: "telefonoInversor" }
		],
	});
});