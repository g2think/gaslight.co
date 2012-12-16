class Gaslight.Views.SvgView extends Backbone.View

  constructor: (options = {})->
    super
    @guides = new Gaslight.Collections.Guides(Gaslight.data.guideData)
    @shapes = new Gaslight.Collections.Shapes(Gaslight.data.shapeData)

    @paper = Raphael(@el, @$el.width(), @$el.height())
    @paper.customAttributes.follow = (element) ->
      follow: element
    @paper.customAttributes.along = (ratio) ->
      guide = this.attr("follow")
      point = guide.getPointAtLength(ratio * guide.getTotalLength())
      transform: "t#{point.x} #{point.y}"

  render: ->
    @addPaths()
    # @addShapes()

  addPaths: ->
    for guide in @guides.models
      guideView = new Gaslight.Views.GuideView(paper: @paper, model: guide).render()

  addShapes: ->
    for shape in @shape.models
      new Gaslight.Views.ShapeView(paper: @paper, model: guide).render()