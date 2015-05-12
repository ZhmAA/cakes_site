// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//= require fancybox


    $('a[href^="#"]').click(function () {
      elementClick = $(this).attr("href");
      destination = $(elementClick).offset().top;
      if($.browser.safari){
        $('body').animate( { scrollTop: destination }, 500 );
      }else{
        $('html').animate( { scrollTop: destination }, 500 );
      }
      return false;
    });



//fancybox
$(document).ready(function() {
$(".fancybox").fancybox({ // initialize fancybox on all pages where it is present
        parent: 'body',
        openEffect  : 'none',
        closeEffect : 'none'
    });
});

