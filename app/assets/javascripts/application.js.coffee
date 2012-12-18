#= require jquery
#= require underscore
#= require backbone
#= require raphael
#= require jquery_ujs
#= require jquery.placeholder
#= require foundation/jquery.foundation.topbar
#= require foundation/jquery.foundation.orbit

#= require backbone/gaslight

$ ->
  $('input, textarea').placeholder()
  $('#nav').foundationTopBar()
  $('.slideshow .slides').orbit
    directionalNav: false
    bullets: true

class Gaslight.HomepageApp

  constructor: ->
    @$nav = $('#nav')
    @$page = $('#page')
    @$window = $(window)

    @svgView = new Gaslight.Views.SvgView
      el: $("#guides")
    @svgView.render()

    @positionPage()
    @positionNav()

    @$window.on 'scroll', => @positionNav()

    @$window.on 'resize', =>
      @resize()

  resize: ->
    callback = =>
      @svgView.reRender()
      @positionPage()
    clearTimeout(@timer)
    @timer = setTimeout(callback, 200)

  positionPage: ->
    @$page.css
      top: @$window.height() - @$nav.height()

  positionNav: ->
    @$nav.css
      position: if @scrolledDown() then "fixed" else "absolute"

  scrolledDown: ->
    @$window.height() < @$window.scrollTop() + @$nav.height()
