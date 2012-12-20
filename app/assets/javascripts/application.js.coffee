#= require html5shiv
#= require jquery
#= require underscore
#= require backbone
#= require raphael
#= require jquery_ujs
#= require foundation/jquery.foundation.orbit
#= require backbone/gaslight

$ ->
  $('#nav .toggle').on 'click touchstart', (event)->
    event.preventDefault()
    $('#nav').toggleClass('expanded')

  $('.slideshow .slides').orbit
    directionalNav: false
    bullets: true

class Gaslight.HomepageApp

  constructor: ->
    @$window = $(window)

    @svgView = new Gaslight.Views.SvgView
      el: $("#guides")
    @svgView.render()

    @$window.on 'resize', =>
      @resize()

  resize: ->
    callback = =>
      @svgView.reRender()
    clearTimeout(@timer)
    @timer = setTimeout(callback, 200)
