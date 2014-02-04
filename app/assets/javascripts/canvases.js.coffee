# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(document).on 'click', '.editable', (e) ->
    controller = $(this).attr('data-controller')
    id = $(this).attr('data-object-id')
    action = $(this).attr('data-action')
    attribute = $(this).attr('data-attribute')
    $(this).addClass('just-got-editted')
    $.getScript(controller + '/' + id + '/' + action + '?attribute=' + attribute)

#    text = $(this).text()
#    fluidtextfield = $('<input type="text" autofocus="true" class="editor" value="' + text + '" />')
#    $(this).addClass('editing').after(fluidtextfield)
#    $(this).css('display', 'none')
    
#  $(document).on 'blur', 'input.editor', (e) ->
#    value = $(this).val()
#    text = $(this).siblings('.editing')
#    if (value != '')
#      text.text(value)
#    text.css('display', 'block')
#    text.removeClass('editing')
#    $(this).remove()
    
  $(document).on 'keyup', 'input.editor', (e) ->
    if e.keyCode == 13
      value = $(this).val()
      text = $(this).siblings('.editing')
      if (value != '')
        text.text(value)
      text.css('display', 'block')
      text.removeClass('editing')
      $(this).remove()