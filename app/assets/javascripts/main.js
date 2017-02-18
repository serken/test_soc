$( document ).ready(function() {
  $('.nav-button').click(function(){
    window.location = $(this).attr('id')
  });

  $('.work_button').click(function(){
    window.location = $(this).attr('id')
  });
});
