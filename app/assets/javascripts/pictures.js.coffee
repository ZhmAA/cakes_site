# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('#with_button').hide()
$('#load_more_pictures').show()
$('#load_more_pictures form').after('<button class="btn btn-primary btn-large btn-clone disabled" style="display: none;">More pics</button>')
$('#load_more_pictures').click ->
$('#load_more_pictures').find('form').hide().siblings('button').show()