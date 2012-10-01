class Gaslight.Routers.MainRouter extends Backbone.Router
  
  initialize: ->
    @index()

  index: ->
    @colorbars = new Gaslight.Views.ColorbarView
      el: $('#bars')
    
    @taglines = new Gaslight.Views.TaglineView
      el: $('#taglines')

    @taglines.on 'changeBrand', (activeBrand) =>
      @colorbars.activate(activeBrand)


