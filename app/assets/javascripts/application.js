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
//= require jquery.turbolinks
//= require jquery_ujs
//= require cloudinary
//= require turbolinks
//= require app
//= require materialize-sprockets
//= require social-share-button
//= require_tree .

$(document).on('turbolinks:load', function(){
  $('.side_btn').sideNav({
      menuWidth: 300,
      edge: 'right', // Choose the horizontal origin
      closeOnClick: true
    });
  $('.button-collapse').sideNav();
  $('.collapsible').collapsible();
  $('.materialboxed').materialbox();
  $('.modal-trigger').leanModal();
  $('#testing').click(function() {
    console.log('clicked');
  });
  $('.carousel.carousel-slider').carousel({full_width: true});

  setTimeout(function(){
    $('#flash').remove();
  }, 5000);

  $('#edit-user-btn').on('click', function (e) {
  	e.preventDefault();
  	$(this).offsetParent().find('.hidden').removeClass('hidden');
  	$(this).offsetParent().find('#user-profile').addClass('hidden');

  });

  $(function() {
        if($.fn.cloudinary_fileupload !== undefined) {
          $("input.cloudinary-fileupload[type=file]").cloudinary_fileupload({replaceFileInput: false});
          $("input.cloudinary-fileupload[type=file]").attr("accept", "image/*");
          $("input.cloudinary-fileupload[type=file]").attr("capture", "camera");
          }
    });
});
