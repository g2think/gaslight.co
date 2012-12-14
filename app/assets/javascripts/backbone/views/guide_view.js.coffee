class Gaslight.Views.GuideView extends Backbone.View

  constructor: (options = {})->

    super
    @paper = options.paper

  render: ->
    @buildStartPoint()
    @createLine()
    @createDot()
    @animateDot()

  buildStartPoint: ->
    point = @model.get('start')
    if point.right?
      x = @paper.width - point.right
    if point.left?
      x = point.left

    if point.bottom?
      y = @paper.height - point.bottom
    if point.top?
      y = point.top

    @startPoint =
      x: x
      y: y

  createLine: ->
    path = "M#{@startPoint.x},#{@startPoint.y}#{@model.linePath()}"
    @line = @paper.path(path)
    @line.attr("stroke", @model.get("color"))

  createDot: ->
    options = _(@model.get('dot')).extend
      follow: @line
      along : 0
    @dot = @paper.path(@model.dotPath())
    @dot.attr(options)

  animateDot: ->
    ratio = if @dot.attr('along') == 1 then 0 else 1
    @dot.animate {along: ratio}, @model.get('dot').speed, @model.get('dot').easing, => @animateDot()