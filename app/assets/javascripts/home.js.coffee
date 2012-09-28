#= require jquery
#= require jquery-ui

jQuery -> 
  timer = setInterval(updateText, 5000)


updateText = ->
  taglines = $('#taglines li')
  activeEl = taglines[Math.floor(Math.random() * taglines.length)]
  taglines.removeClass('active')
  $("#bars li").removeClass('hover', 500)

  newColor = $(activeEl).attr('class')
  activeBar = $("#bars li.#{newColor}")
  activeBar.addClass('hover', 750)

  $("h1, h2", activeEl).addClass(newColor)
  $(activeEl).addClass('active')

