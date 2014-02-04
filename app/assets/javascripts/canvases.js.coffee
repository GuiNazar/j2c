# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(document).on 'click', '.editable', (e) ->
    url = $(this).attr('data-url')
    $(this).addClass('editting')
    $.getScript(url)
    
  $(document).on 'hide.bs.modal', '#myModal', (e) ->
     $.getScript('canvases/refresh')
     
  $(document).on 'blur', 'form.xhr-editting input', (e) ->
    form = $(this).parents('form')
    form.siblings('.editting').css('display','block').removeClass('editting')
    form.remove()