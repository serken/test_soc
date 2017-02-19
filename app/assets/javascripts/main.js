$( document ).ready(function() {
  $('.nav-button').click(function(){
    window.location = $(this).attr('id')
  });

  $('.work_button').click(function(){
    window.location = $(this).attr('id')
  });

  setInterval(function(){ update_money(); }, 1000);
});

  function update_money() {
    var s = $("#character_money");
    if(s.data('money') == undefined){
      return
    }

    var curr_value = parseFloat(s.text());
    var value = parseFloat(((s.data('money') / 3600) + curr_value).toFixed(2));
    s.text(value);
  }
