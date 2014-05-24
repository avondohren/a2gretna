// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var value = 0

$(document).ready(function (){
  $(".play").on('click', function () {
    if (value === 0){
      value = 90;
    } else {
      value = 0;
    }
    
    $(this).rotate(value);
    
    $(this).parent().find("div").slideToggle();
  });
});