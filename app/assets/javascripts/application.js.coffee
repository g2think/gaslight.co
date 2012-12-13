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
  
  $('#mainNav').foundationTopBar()
  
  $('.slideshow .slides').orbit
    directionalNav: false
    bullets: true
        
Gaslight.kickOff = ->
  @svgView = new Gaslight.Views.SvgView
    el: $("#guides")
    guides: new Gaslight.Collections.Guides(Gaslight.guideData)

  @svgView.render()
  
  $('#page').css
    top: $(window).height() - $('#mainNav').height()

  $(window).on "scroll", (event) ->
    if $(window).height() < $(window).scrollTop() + $('#mainNav').height()
      $('#mainNav').css
        position: "fixed"
        top: 0
    else
      $('#mainNav').css
        position: "relative"
