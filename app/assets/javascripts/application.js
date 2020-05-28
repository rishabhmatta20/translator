// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery_ujs
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery

// --------------------- Vendor ------------------------ //

//= require animsition/animsition
//= require animsition/animsition.min
//= require bootstrap/bootstrap
//= require bootstrap/bootstrap.min
//= require popper/popper
//= require popper/popper.min
//= require tooltip/tooltip
//= require count_down_time/countdowntime
//= require date_range_picker/daterangepicker
//= require date_range_picker/moment
//= require date_range_picker/moment.min
//= require perfect_scrollbar/perfect-scrollbar.min
//= require select2/select2
//= require select2/select2.min

// --------------------- /Vendor ------------------------ //

$(document).ready(function() {
  $('#language-dropdown').change(function(){
    locale = $(this).find(":selected").data('locale');
    $.ajax({
      url: window.location.href,
      data: {
        locale: locale
      },
      dataType: 'script'
    });
  });
});
