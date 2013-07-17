#= require spec

describe "ShareView", ->
  beforeEach ->
    @post = $("<div style='height: 1000px;'></div>")
    @body = $('body')
    @body.height(400)
    @body.append(@post)

    @shareView = new Gaslight.Views.ShareView
      shareUrl: "http://whatup.com"
      viewportEl: @body
      targetEl: @post

  describe "default", ->
    it "shouldn't be active", ->
      expect(@shareView.$el.attr("class")).to.not.match /active/

  describe "srolling", ->
    describe "less than 50%", ->
      beforeEach ->
        @body.scrollTop(50)
        @body.trigger "scroll"
      it "doesn't shows the shareView", ->
        expect(@shareView.$el.attr("class")).to.not.match /active/

    describe "more than 50%", ->
      beforeEach ->
        @body.scrollTop(400)
        @body.trigger "scroll"
      it "doesn't shows the shareView", ->
        expect(@shareView.$el.attr("class")).to.match /active/

    describe "on mobile", ->
      beforeEach ->
        @body.width(300)
        @body.scrollTop(400)
        @body.trigger "scroll"
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
