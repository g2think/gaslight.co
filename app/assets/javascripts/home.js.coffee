#= require jquery
jQuery -> 
  timer = setInterval(updateText, 5000)


updateText = ->
  taglines = $('#taglines li')
  activeEl = taglines[Math.floor(Math.random() * taglines.length)]
  taglines.removeClass('active')
  $(activeEl).addClass('active')

