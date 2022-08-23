$(document).ready(function() {
	$('#tabl').dataTable({
		ajax: {
			url: "http://localhost:8080/listarproyecto",
			dataSrc: function(json) {
				return json;
			},
		},
		columns: [
			{ data: "nombreProyecto" },
			{ data: "descripcionProyecto" },
			{ data: "categoriaProyecto" },
			{ data: "valorProyecto" },
			{ data: "tiempoProyecto" },
			{ data: "colaboradorProyecto" }
		],
	});
});