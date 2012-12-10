#= require jquery
#= require underscore
#= require backbone
#= require raphael
#= require jquery_ujs
#= require jquery.placeholder
#= require foundation/jquery.foundation.topbar

#= require backbone/gaslight

$ -> 
  $('input, textarea').placeholder()
  $(document).foundationTopBar();

   # new Gaslight.Routers.MainRouter()