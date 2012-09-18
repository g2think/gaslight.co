#= require jquery

jQuery -> 
  timer = setInterval(updateText, 5000)

phrases = ['New Text', 'Awesome words', 'Catchy opener', 'Cool people', 'Funk radio, 'Tupac Tuesdays']

updateText = ->
  phrase = phrases[Math.floor(Math.random() * phrases.length)];
  $('#opener span').fadeOut 1000, ->
  	$('#opener span').text(phrase)
  	$('#opener span').fadeIn(1000)
