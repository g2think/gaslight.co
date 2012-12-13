class Gaslight.Routers.MainRouter extends Backbone.Router

  initialize: ->
    @mainEl = $('#guides')
    @index()

  index: ->
    @guidesCollection = new Gaslight.Collections.Guides(Gaslight.guideData)

    @svgView = new Gaslight.Views.SvgView
      el: @mainEl
      guides: @guidesCollection

    @svgView.render()