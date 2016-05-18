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


  $('#user-edit-remove-interest-container').on('click', 'a', function(e){
// debugger;
    e.preventDefault();
    var $target = $(e.target);

    $.get({
      url: $target.attr('href'),
      data: $target.serialize()
    }).done(function(){
      $target.hide(500);
      alert:("Deleted Successfully!");
    }).fail(function(error) {
      console.log(error);
    }); // done functionality
  }); // new interest form click







}); // document ready end

