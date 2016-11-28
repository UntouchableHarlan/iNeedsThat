// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  $("#signup-link").on('click', function(e) {
    e.preventDefault();
    console.log('clicked');
    $('#signupModal').modal('toggle');
  });

  $("#new_user").on('submit', function(e) {
    e.preventDefault();
    console.log('trying to send form');
    $.ajax({
      type: $(this).attr('method'),
      url: $(this).attr('action'),
      data: $(this).serialize(),
      success: function(res) {
        console.log(res);
        $('#signupModal').modal('hide');
        // location.reload();
      }
    })
  })
});
