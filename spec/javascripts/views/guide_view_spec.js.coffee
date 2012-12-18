#= require spec

describe "GuideView", ->
  beforeEach ->
    @paper = new Raphael(0, 0, 1000, 1000)
    @guide = new Gaslight.Models.Guide
      points: [
        {start: true, top: 200, right: 200}
        {bottom: 200, left: 200}
      ]
      dot: {
        size: 20
        fill: "#fff"
        speed: 8000
        easing: "<>"
      }
    @guideView = new Gaslight.Views.GuideView
      paper: @paper
      model: @guide

  describe "constructor", ->
    it "has a paper", ->
      @guideView.paper.should.exist

  describe "line", ->
    beforeEach ->
      @guideView.createLine()
    it "should color the line", ->
      @guideView.line.attr('stroke').should.equal @guide.get('color')

  describe "dot", ->
    beforeEach ->
      @guideView.render()
    it "should create a dot", ->
      @guideView.dot.should.be.defined
    xit "should follow the line", ->
      @guideView.dot.attr('follow').should.equal @guideView.line