jQuery(document).ready(function() {
	jQuery('body').append('<div id="top"></div>');
	jQuery("#top").click(function () {
		jQuery("body, html").animate({
			scrollTop: 0
		}, 800);
		return false;
	});
});