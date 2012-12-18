class Gaslight.Views.SvgView extends Backbone.View

  constructor: (options = {})->
    super
    @guides = new Gaslight.Collections.Guides(Gaslight.Data.guideData)
    @shapes = new Gaslight.Collections.Shapes(Gaslight.Data.shapeData)
    @paper = Raphael(@el, @$el.width(), @$el.height())

    @paper.customAttributes.follow = (element) ->
      follow: element
    @paper.customAttributes.along = (ratio) ->
      guide = this.attr("follow")
      point = guide.getPointAtLength(ratio * guide.getTotalLength())
      transform: "t#{point.x} #{point.y}"

  render: ->
    @addShapes()
    @addPaths()
    

  reRender: ->
    @paper.clear()
    @paper.setSize(@$el.width(), @$el.height())
    @render()

  addPaths: ->
    for guide in @guides.models
      new Gaslight.Views.GuideView(paper: @paper, model: guide).render()

  addShapes: ->
    for shape in @shapes.models
      new Gaslight.Views.ShapeView(paper: @paper, model: shape).render()