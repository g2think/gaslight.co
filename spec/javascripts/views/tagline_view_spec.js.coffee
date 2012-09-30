describe "TaglineView", ->
  beforeEach ->
    loadFixtures 'taglines'
    @taglineView = new Gaslight.Views.TaglineView
      el: $('#taglines')
      preventInterval: true

  describe "init", ->
    it "should have and el of type ul", ->
      expect(@taglineView.$el).toBe('ul')

    it "should have some taglines", ->
      expect(@taglineView.$taglines.first()).toBe('li')
      expect(@taglineView.$taglines.length).toBeGreaterThan(1)

  describe "getRandomIndex", ->
    it "should return a random index", ->
      randomIndex = @taglineView.getRandomIndex()
      expect(randomIndex).toBeGreaterThan(-1)
      expect(randomIndex).toBeLessThan(@taglineView.$taglines.length)

  describe "transition", ->
    describe "without a given index", ->
      beforeEach ->
        @taglineView.transition()
      it "should activate a random tagline", ->
  
  describe "activeTagline", ->
    it "should return the currently active tagline", ->
      expect(@taglineView.activeTagline().length).toBe(1)
      expect(@taglineView.activeTagline()).toBe('li.active')

  describe "deactivateActiveTagline", ->

    animationCallback = null
    describe "callback", ->
      beforeEach ->
        animationCallback = jasmine.createSpy('animationCallback');
        jasmine.Clock.useMock();
      it "calls the callback when the animations are finished", ->
        @taglineView.deactivateActiveTagline(animationCallback)
        expect(animationCallback).not.toHaveBeenCalled();
        jasmine.Clock.tick(8000);
        # expect(animationCallback).toHaveBeenCalled();


