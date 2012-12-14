class Gaslight.Models.Guide extends Backbone.Model
  defaults:
    color: "blue"
    points: []
    dot:
      size: 20
      position: 0
      fill: "#000"
      opacity: 1
      speed: 2000
      easing: "<>"

  linePath: ->
    pathString = ""
    for point, i in @get('points')
      pathString += "l#{point.x},#{point.y}"
    pathString

  dotPath: ->
    radius = @get('dot').size / 2
    "M#{-radius},0L0,#{radius}L#{radius},0L0,#{-radius}Z"
