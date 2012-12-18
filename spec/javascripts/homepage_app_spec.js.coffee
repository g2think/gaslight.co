#= require spec

describe "HomepageApp", ->
  beforeEach ->
    $('body').html(JST['templates/homepage'])
    @app = new Gaslight.HomepageApp()
    @app.$page.height(10000)
  describe "constructor", ->
    it "should build the svgView", ->
      @app.svgView.should.exist
    it "position the page", ->
      @app.$page.offset().top.should.be.above(100)
    it "absolutely position the nav", ->
      @app.$nav.css('position').should.equal "absolute"

  describe "scrolling", ->
    beforeEach ->
      @app.$window.scrollTop(@app.$window.height())
      @app.positionNav()
    it "fixed position the nav", ->
      @app.$nav.css('position').should.equal "fixed"