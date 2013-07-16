#= require html5shiv
#= require jquery
#= require jquery_ujs
#= require raphael
#= require vendor/hubspot.js
#= require underscore
#= require moment
#= require backbone
#= require backbone/gaslight

track = (category, action, value = "") ->
  if _gaq?
    _gaq.push(['_trackEvent', category, action, value])

$ ->
  $('#nav .toggle').on 'click touchstart', (event)->
    event.preventDefault()
    track("Mobile Navigation", "Open")
    $('#nav').toggleClass('expanded')

  $('a[rel]').on 'click', (event) ->
    link = $(event.currentTarget)
    track('Links', link.attr('rel'), link.attr('href'))
    if not ((event.metaKey or event.ctrlKey) or link.attr('target') is "_blank")
      event.preventDefault()
      setTimeout("document.location = '#{link.attr('href')}'", 100)
      

    
