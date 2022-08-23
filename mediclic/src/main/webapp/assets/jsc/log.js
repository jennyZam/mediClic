function mostrarPasswords(){
	var cambio = document.getElementById("emppass");
	if(cambio.type == "password"){
		cambio.type = "text";
		$('.icons').removeClass('bi bi-eye-slash-fill').addClass('bi bi-eye-fill');
	}else{
		cambio.type = "password";
		$('.icons').removeClass('bi bi-eye-fill').addClass('bi bi-eye-slash-fill');
	}
};

function mostrarPasswor(){
	var cambiox = document.getElementById("inpass");
	if(cambiox.type == "password"){
		cambiox.type = "text";
		$('.icons').removeClass('bi bi-eye-slash-fill').addClass('bi bi-eye-fill');
	}else{
		cambiox.type = "password";
		$('.icons').removeClass('bi bi-eye-fill').addClass('bi bi-eye-slash-fill');
	}
}; 

function mostrarPassword(){
	var cambios = document.getElementById("userpass");
	if(cambios.type == "password"){
		cambios.type = "text";
		$('.icons').removeClass('bi bi-eye-slash-fill').addClass('bi bi-eye-fill');
	}else{
		cambios.type = "password";
		$('.icons').removeClass('bi bi-eye-fill').addClass('bi bi-eye-slash-fill');
	}
}; 

var $myGroup = $('#myGroup');
	$myGroup.on('show.bs.collapse', '.collapse', function() {
	$myGroup.find('.collapse.show').collapse('hide');
});