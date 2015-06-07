# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$('.pictures').append('<%= j render @pictures %>').siblings('#load_more_pictures').find("button").hide().siblings('form').show();
('<% unless @pictures.next_page %>')
$('#load_more_pictures').remove();
('<% end %>')
