describe "Colorbar", ->
  beforeEach ->
    loadFixtures 'colorbars'
    @colorbar = new Gaslight.Views.ColorbarView
      el: $('#bars')

  describe "init", ->
    it "should have an el of type ul", ->
      expect(@colorbar.$el).toBe('ul')
    it "should have some bars", ->
      expect(@colorbar.$colorbars.first()).toBe('li')
      expect(@colorbar.$colorbars.length).toBeGreaterThan(1)

  describe "activate", ->
    describe "with an index", ->
      beforeEach ->
        @colorbar.activate(2)
      it "should have activated the correct bar", ->
        expect(@colorbar.$('li').eq(1)).toHaveClass "active"
    describe "without an index", ->
      beforeEach ->
        @colorbar.activate()
      it "should have activated the first bar", ->
        expect(@colorbar.$('li').first()).toHaveClass "active"
    describe "multiple", ->
      beforeEach ->
        @colorbar.activate(1)
        @colorbar.activate(2)
      it "should have deactivated the first bar", ->
        expect(@colorbar.$('li').first()).not.toHaveClass "active"

  describe "deactivateAll", ->
    beforeEach ->
      @colorbar.activate(2)
      @colorbar.deactivateAll()
    it "should have dactivated the bars", ->
      expect(@colorbar.$('li')).not.toHaveClass "active"