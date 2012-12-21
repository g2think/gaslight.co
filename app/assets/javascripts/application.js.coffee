#= require html5shiv
#= require jquery
#= require jquery_ujs
#= require foundation/jquery.foundation.orbit
#= require raphael
#= require underscore
#= require backbone
#= require backbone/gaslight

$ ->
  $('#nav .toggle').on 'click touchstart', (event)->
    event.preventDefault()
    $('#nav').toggleClass('expanded')

  $('#slideshow .slides').orbit
    directionalNav: false
    bullets: true