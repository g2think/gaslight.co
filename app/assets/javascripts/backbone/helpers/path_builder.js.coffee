class Gaslight.Helpers.PathBuilder

  constructor: (options) ->
    @paper = options.paper
    @model = options.model

  linePath: ->
    pathString = ""
    for point, i in @model.get('points')
      pathString += @pathForPoint(point)
    pathString

  pathForPoint: (point) ->
    if @isAbsolute(point)
      x = if point.right? then @paper.width - point.right else point.left
      y = if point.bottom? then @paper.height - point.bottom else point.top
    else
      x = point.x
      y = point.y
    "#{@commandForPoint(point)}#{x},#{y}"

  commandForPoint: (point) ->
    if @isAbsolute(point)
      command = if point.start then "M" else "L"
    else
      command = if point.start then "m" else "l"
    command

  isAbsolute: (point) ->
    point.left? or point.right? or point.top? or point.bottom?

  dotPath: ->
    radius = @model.get('dot').size / 2
    "M#{-radius},0L0,#{radius}L#{radius},0L0,#{-radius}Z"

  shapePath: ->
    @linePath() + 'z'