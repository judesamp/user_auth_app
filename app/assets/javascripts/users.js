$(function() {
  $('.delete_button').on('click', function(e) {
    e.preventDefault();
    var user_id = $(this).attr('data-user-id');
    var row = $(this).parents('tr');
    

    $.ajax({

      url: '/users/' + user_id + '/destroy',
      type: 'DELETE',

      success: function(data) {

        if (data == "1") {

          $(row).hide('slow');
          $('#message').show().html('The user was deleted.').fadeOut(3000);

        } else {

          $('#message').show().html('Something went wrong. The user was not deleted.').fadeOut('slow');

        }
      }

    });

  });

  $(':checkbox').on('click', function() {
    var user_id = $(this).attr('data-user-id');
    var current_status = $(this).attr('data-status');
    var status;

    if (current_status == "true") {
      status = "false";
    } else {
      status = "true";
    }
      
    $.ajax({
      url: '/users/' + user_id + '/update_status',
      type: 'PATCH',
      data: { "users": {"status": status}},

      success: function(data) {
        if (data == "1") {
          $('#message').show().html('The user\'s status was updated.').fadeOut(3000);
        } else {
          $('#message').show().html('Something went wrong. The user was not updated.').fadeOut('slow');
        }
      }
    });
  });

});
