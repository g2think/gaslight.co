class Gaslight.Views.SvgView extends Backbone.View

  constructor: (options = {})->
    super
    @guides = options.guides
    @paper = Raphael(@el, @$el.width(), @$el.height())
    @paper.customAttributes.follow = (element) ->
      follow: element
    @paper.customAttributes.along = (ratio) ->
      guide = this.attr("follow")
      point = guide.getPointAtLength(ratio * guide.getTotalLength())
      transform: "t#{point.x} #{point.y}"

  render: ->
    @addPaths()

  addPaths: ->
    for guide in @guides.models
      guideView = new Gaslight.Views.GuideView
        paper: @paper
        model: guide
      guideView.render()