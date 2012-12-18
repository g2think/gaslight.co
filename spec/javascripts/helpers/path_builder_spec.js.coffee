#= require spec

describe "PathBuilder", ->
  beforeEach ->
    @points = [
        {start: true, right: 100, bottom: 200}
        {x: 10, y: 20}
        {x: 30, y: 40}
      ]
    @paper = Raphael(0, 0, 1000, 1000)
    @builder = new Gaslight.Helpers.PathBuilder
      paper: @paper

  describe "pathForPoint", ->
    describe "pixel based points", ->
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
    describe "percentage based points", ->

  describe "openPathForPoints", ->
    it "should return the line path string", ->
      @builder.openPathForPoints(@points).should.equal "M900,800l10,20l30,40"

  describe "closedPathForPoints", ->
    it "should return the line path string", ->
      @builder.closedPathForPoints(@points).should.equal "M900,800l10,20l30,40Z"

  describe "diamondPath", ->
    describe "default", ->
      it "should return a 20px diamond path", ->
        @builder.diamondPath().should.equal "M-10,0l10,10l10,-10l-10,-10Z"
    describe "with a size", ->
      it "should return a properly sized diamond path", ->
        @builder.diamondPath(40).should.equal "M-20,0l20,20l20,-20l-20,-20Z"