describe "TaglineView", ->
  beforeEach ->
    loadFixtures 'taglines'
    @taglineView = new Gaslight.Views.TaglineView
      el: $('#taglines')

    clearInterval(@taglineView.timer)


  describe "init", ->
    it "should have and el of type ul", ->
      expect(@taglineView.$el).toBe('ul')
    it "should have some taglines", ->
      expect(@taglineView.$taglines.first()).toBe('li')
      expect(@taglineView.$taglines.length).toBeGreaterThan(1)
    it "should have an active tagline", ->
      expect(@taglineView.$activeTagline).toBe('li.active')
    it "should create the timer", ->
      expect(typeof @taglineView.timer).toBe('number')

  describe "getRandomIndex", ->
    it "should return a random index", ->
      randomIndex = @taglineView.getRandomIndex()
      expect(randomIndex).toBeGreaterThan(-1)
      expect(randomIndex).toBeLessThan(@taglineView.$taglines.length)

  describe "transition", ->
    timer = null
    describe "without a given index", ->
      beforeEach ->
        spyOn(@taglineView, 'animate')
        @taglineView.transition()
      it "should animate", ->
        expect(@taglineView.animate).toHaveBeenCalled()
  
  describe "activate", ->
    beforeEach ->
      @element = @taglineView.$taglines.last()
      @taglineView.activate(@element)
    it "should remove the currently active tagline", ->
      expect(@taglineView.$taglines.first()).not.toHaveClass('active')
    it "activate the new tagline", ->
      expect(@element).toHaveClass('active')
    it "set the activeTagline", ->
      expect(@taglineView.$activeTagline).toBe(@element)