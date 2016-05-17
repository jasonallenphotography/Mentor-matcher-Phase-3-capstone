$(document).ready(function() {
  $('#add-interest-button-user-show').on('submit', function(event){
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      method: $target.attr('method'),
      url: $target.attr('action'),
      data: $target.serialize()
    }).done(function(response){
      $('#interest-container-user-show').prepend(response);
    }).then(function(){
      $.get({
        url: window.location.href
      }).done(function(response){
        $('.interest-options-holder').empty(response);
        $('.interest-options-holder').html(response);
      });
    });
  }); // new interest form click

  //
  // $('#user-edit-remove-interest-container').on('click', 'a', function(event){
  //   event.preventDefault();
  //   var $target = $(event.target);
  //   $.ajax({
  //     method: $target.attr('method'),
  //     url: $target.attr('action')
  //   }).done(function(response){
  //     $target.hide();
  //   }); // done functionality
  // }); // new interest form click







}); // document ready end
