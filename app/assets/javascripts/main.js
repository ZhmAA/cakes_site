 jQuery(document).ready(function() {
 jQuery('body').append('<div id="top"></div>');
 jQuery("#top").click(function () {
  jQuery("body, html").animate({
   scrollTop: 0
  }, 800);
  return false;
 });
 jQuery('.main-nav').find('a').click(function() {
  var it = jQuery(this)
   .attr('href')
   .substring(2);
  if(jQuery.trim(it)!=''){
   jQuery('html,body').animate({scrollTop:jQuery('#'+it).offset().top},800);
   return false;
  }
 });
}); 