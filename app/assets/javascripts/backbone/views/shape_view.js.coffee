class Gaslight.Views.ShapeView extends Backbone.View

  constructor: (options = {})->
    super
    @paper = options.paper
    @pathBuilder = new Gaslight.Helpers.PathBuilder
      paper: @paper
      model: @model

  render: ->
    @createShape()

  createShape: ->
    @shape = @paper.path(@pathBuilder.shapePath())
    @shape.attr
      fill: @model.get("fill")
      "fill-opacity": @model.get("opacity")
      "stroke-opacity": 0.0