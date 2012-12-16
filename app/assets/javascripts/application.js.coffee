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

Gaslight.kickOff = ->
  @svgView = new Gaslight.Views.SvgView
    el: $("#guides")
  @svgView.render()

  $('#page').css
    top: $(window).height()

  positionNav = ->
    if $(window).height() < $(window).scrollTop() + 62
      $('#nav').css
        position: "fixed"
        top: 0
        marginTop: 0

    else
      $('#nav').css
        position: "relative"
        marginTop: -62

  positionNav()

  $(window).on "scroll", (event) ->
    positionNav()

