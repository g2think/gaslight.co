class Gaslight.Helpers.PathBuilder

  constructor: (options) ->
    @paper = options.paper

  openPathForPoints: (points) ->
    pathString = ""
    for point, i in points
      pathString += @pathForPoint(point)
    pathString

  closedPathForPoints: (points) ->
    @openPathForPoints(points) + 'Z'

  pathForPoint: (point) ->
    if @isAbsolutePoint(point)
      x = if point.right? then @paper.width - point.right else point.left
      y = if point.bottom? then @paper.height - point.bottom else point.top
    else
      x = point.x
      y = point.y
    "#{@commandForPoint(point)}#{x},#{y}"

  commandForPoint: (point) ->
    if @isAbsolutePoint(point)
      command = if point.start then "M" else "L"
    else
      command = if point.start then "m" else "l"
    command

  isAbsolutePoint: (point) ->
    point.left? or point.right? or point.top? or point.bottom?

  diamondPath: (size = 20) ->
    radius = size / 2
    "M#{-radius},0l#{radius},#{radius}l#{radius},#{-radius}l#{-radius},#{-radius}Z"