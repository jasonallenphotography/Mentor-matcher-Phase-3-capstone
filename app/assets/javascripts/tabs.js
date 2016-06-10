$(document).ready(function() {

  $(".tabs-bar").on('click', 'a', function(event){
    event.preventDefault();
    var tab = $(this).attr("href");
    $(this).parent().addClass("active");
    $(this).parent().siblings().removeClass("active");
    $(".tab-content").css("display","none");
    $(tab).css("display", "block");
  });

});
