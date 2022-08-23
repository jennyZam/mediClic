$(document).ready(function() {
	$('#tabl').dataTable({
		ajax: {
			url: "http://localhost:8080/listaremprendedor",
			dataSrc: function(json) {
				return json;
			},
		},
		columns: [
			{ data: "nombreEmprendedor" },
			{ data: "emailEmprendedor" },
			{ data: "direccionEmprendedor" },
			{ data: "celularEmprendedor" }	
		],
	});
});