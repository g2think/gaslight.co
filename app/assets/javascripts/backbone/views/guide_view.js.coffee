class Gaslight.Views.GuideView extends Backbone.View

  constructor: (options = {})->
    super
    @paper = options.paper
    @pathBuilder = new Gaslight.Helpers.PathBuilder
      paper: @paper
      model: @model

  render: ->
    @createLine()
    if @model.get('dot')
      @createDot()
      @animateDot()

  createLine: ->
    @line = @paper.path @pathBuilder.openPathForPoints @model.get('points')
    @line.attr
      'stroke': @model.get("color")
      'stroke-width': @model.get("width")

  createDot: ->
    options = _(@model.get('dot')).extend
      follow: @line
      along : 0
    @dot = @paper.path @pathBuilder.diamondPath @model.get('dot').size
    @dot.attr(options)

  animateDot: ->
    ratio = if @dot.attr('along') == 1 then 0 else 1
    @dot.animate {along: ratio}, @model.get('dot').speed, @model.get('dot').easing, => @animateDot()