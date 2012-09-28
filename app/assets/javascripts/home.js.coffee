#= require jquery
jQuery -> 
  timer = setInterval(updateText, 5000)


updateText = ->
  taglines = $('#taglines li')
  activeEl = taglines[Math.floor(Math.random() * taglines.length)]
  $('#taglines').fadeOut 500, ->
    taglines.removeClass('active')
    $(activeEl).addClass('active')
    $('#taglines').fadeIn(500)

