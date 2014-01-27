$(document).ready ->
  $('.add a').on 'click', (e) ->
    e.preventDefault()
    text = prompt 'Novo texto'
    if(text!= null)
      content = $(this).parents('.slide').find('.content ul.list-group')
      content.append($('<li class="list-group-item"><span class="badge"><a class="delete" href="#">Del</a></span><span class="text">' + text + '</span></li>'))

  $(document).on 'click', 'li a.delete', (e) ->
    e.preventDefault()
    $(this).parents('li.list-group-item').remove()
    
  $(document).on 'click', '.title h4, .list-group-item .text', (e) ->
    text = $(this).text()
    textfield = $('<input type="text" autofocus="true" class="editor" value="' + text + '" />')
    $(this).addClass('editing').after(textfield)
    $(this).css('display', 'none')
    
  $(document).on 'blur', 'input.editor', (e) ->
    value = $(this).val()
    text = $(this).siblings('.editing')
    if (value != '')
      text.text(value)
    text.css('display', 'block')
    text.removeClass('editing')
    $(this).remove()
    
  $(document).on 'keyup', 'input.editor', (e) ->
    if e.keyCode == 13
      $(this).trigger("blur")