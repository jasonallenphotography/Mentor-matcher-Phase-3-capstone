$(document).ready(function() {
  $('#add-interest-button-user-show').on('submit', function(event){
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      method: $target.attr('method'),
      url: $target.attr('action'),
      data: $target.serialize()
    }).done(function(response){
      // console.log(response)
      $('#interest-container-user-show').prepend(response);
    }).fail(function(response){
      console.log('This is failing: ');
      console.log(response);
    }); // done functionality
  }); // new interest form click
}); // document ready end
