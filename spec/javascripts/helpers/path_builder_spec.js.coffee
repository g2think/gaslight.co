#= require spec

describe "PathBuilder", ->
  beforeEach ->
    @guide = new Gaslight.Models.Guide
      color: "red"
      points: [
        {start: true, right: 100, bottom: 200}
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
    @paper = Raphael(0, 0, 1000, 1000)
    @builder = new Gaslight.Helpers.PathBuilder
      paper: @paper
      model: @guide

  describe "pathForPoint", ->
    it "should return a relative path for x and y", ->
      @builder.pathForPoint(x: 10, y: 20).should.equal "l10,20"
    it "should return an absolute path for left and top", ->
      @builder.pathForPoint(left: 100, top: 200).should.equal "L100,200"
    it "should return an absolute path for right and bottom", ->
      @builder.pathForPoint(right: 100, bottom: 200).should.equal "L900,800"
    it "should return a beginning relative path for x and y", ->
      @builder.pathForPoint(start: true, x: 10, y: 20).should.equal "m10,20"
    it "should return a beginning absolute path for left and top", ->
      @builder.pathForPoint(start: true, left: 10, top: 20).should.equal "M10,20"

  describe "linePath", ->
    it "should return the line path string", ->
      @builder.linePath().should.equal "M900,800l10,20l30,40"

  describe "dotPath", ->
    it "should return the dot path string", ->
      @builder.dotPath().should.equal "M-10,0L0,10L10,0L0,-10Z"