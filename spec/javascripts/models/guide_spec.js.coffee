#= require spec

describe "Guide", ->
  beforeEach ->
    @guide = new Gaslight.Models.Guide
      color: "red"
      points: [
        {start: true, right: 10, bottom: 20}
        {x: 10, y: 20}
        {x: 30, y: 40}
      ]
      dot:
        size: 20
        position: .1
        fill: "blue"
        opacity: .5
        speed: 4000
        easing: "<>"
