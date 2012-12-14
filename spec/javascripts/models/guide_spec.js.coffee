#= require spec

describe "Guide", ->
  beforeEach ->
    @guide = new Gaslight.Models.Guide
      color: "red"
      start: {
        left: 100
        bottom: 100
      }
      points: [
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

  describe "linePath", ->
    it "should return the line path string", ->
      @guide.linePath().should.equal "M10,20L30,40"

  describe "dotPath", ->
    it "should return the dot path string", ->
      @guide.dotPath().should.equal "M-10,0L0,10L10,0L0,-10Z"