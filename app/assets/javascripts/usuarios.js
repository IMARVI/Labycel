// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var init_usuario_lookup;
init_usuario_lookup = function(){
    $('#usuario-lookup-form').on('ajax:success', function(event,data,status){
        $('#nombre-lookup').replaceWith(data);
        init_usuario_lookup();
    });

    $('#usuario-lookup-form').on('ajax:error', function(event, xhr, status, error){
        $('#nombre-lookup-resultados').replaceWith(' ');
        $('#nombre-lookup-error').repaceWith('No existe ese nombre');
    });
}


$(document).ready(function() {
    init_usuario_lookup();
})