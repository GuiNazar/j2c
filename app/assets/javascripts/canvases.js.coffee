# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(document).on 'click', '.editable', (e) ->
    controller = $(this).attr('data-controller')
    id = $(this).attr('data-object-id')
    action = $(this).attr('data-action')
    attribute = $(this).attr('data-attribute')
    $(this).addClass('editting')
    $.getScript(controller + '/' + id + '/' + action + '?attribute=' + attribute)
    
#  $(document).on 'blur', '. 