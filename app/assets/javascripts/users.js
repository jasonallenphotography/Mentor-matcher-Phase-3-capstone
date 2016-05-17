
$(document).ready(function() {
  $('.add-interest-button-user-show').on('submit', function(event){
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      method: 'get',
      url: $target.attr('href')
    }).done(function(response){
      $('#interest-container-user-show').append(response);
    }); // done functionality
  }); // new interest form click
}); // document ready end
