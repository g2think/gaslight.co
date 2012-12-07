#= require spec

describe "GuideView", ->
  beforeEach ->
    @paper = new Raphael($('body'))
    @guide = new Gaslight.Models.Guide()
    @guideView = new Gaslight.Views.GuideView
      paper: @paper
      model: @guide

  describe "constructor", ->
    it "has a paper", ->
      @guideView.paper.should.exist

  describe "line", ->
    beforeEach ->
      @guideView.createLine()
    it "should create a line", ->
      @guideView.line.attr('stroke').should.equal @guide.get('color')

  describe "dot", ->
    beforeEach ->
      @guideView.createLine()
      @guideView.createDot()
    it "should create a dot", ->
      @guideView.dot.should.be.defined
    xit "should follow the line", ->
      @guideView.dot.attr('follow').should.equal @guideView.line