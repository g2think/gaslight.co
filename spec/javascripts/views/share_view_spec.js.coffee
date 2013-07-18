#= require spec

describe "ShareView", ->
  beforeEach ->
    @target = $("<div style='height: 1000px;'></div>")
    @viewport = $("<div style='height: 400px; overflow: scroll;'></div>")
    @viewport.append(@target)
    $('body').append(@viewport)

    @shareView = new Gaslight.Views.ShareView
      shareUrl: "http://whatup.com"
      viewportEl: @viewport
      targetEl: @target

  describe "default", ->
    it "shouldn't be active", ->
      expect(@shareView.$el.attr("class")).to.not.match /active/

  describe "srolling", ->
    describe "less than 50% down the viewportEl", ->
      beforeEach ->
        @viewport.scrollTop(50)
        @viewport.trigger "scroll"
      it "doesn't shows the shareView", ->
        expect(@shareView.$el.attr("class")).to.not.match /active/

    describe "more than 50% down the viewportEl", ->
      beforeEach ->
        @viewport.scrollTop(500)
        @viewport.trigger "scroll"
      it "shows the shareView", ->
        expect(@shareView.$el.attr("class")).to.match /active/

    describe "on mobile", ->
      beforeEach ->
        @viewport.width(300)
        @viewport.scrollTop(400)
        @viewport.trigger "scroll"
      it "doesn't show", ->
        expect(@shareView.$el.attr("class")).to.not.match /active/

  describe "shareUrl",  ->
    it "is the encoded options.shareUrl", ->
      expect(@shareView.shareUrl).to.equal "http%3A%2F%2Fwhatup.com"

  describe "show", ->
    beforeEach ->
      @shareView.show()
    it "adds the active class", ->
      expect(@shareView.$el.attr("class")).to.match /active/

  describe "hide", ->
    beforeEach ->
      @shareView.show()
      @shareView.hide()
    it "removes the active class", ->
      expect(@shareView.$el.attr("class")).to.not.match /active/


  describe "deactivate", ->
    beforeEach ->
      @shareView.show()
      @shareView.deactivate()
      @shareView.show()
    it "shouldn't show", ->
      expect(@shareView.$el.attr("class")).to.not.match /active/
