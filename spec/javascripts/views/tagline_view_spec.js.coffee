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

  describe "getNextIndex", ->
    describe "with first element active", ->
      beforeEach ->
        @taglineView.activate(@taglineView.$taglines.first())
      it "should increment the index", ->
        expect(@taglineView.getNextIndex()).toBe(1)
    describe "with last element active", ->
      beforeEach ->
        @taglineView.activate(@taglineView.$taglines.last())
      it "should increment the index back to 0", ->
        expect(@taglineView.getNextIndex()).toBe(0)

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

  describe "changeBrand", ->
    describe "incrementing the active brand", ->
      beforeEach ->
        @taglineView.activeBrand = 3
        @taglineView.changeBrand()
      it "should increment", ->
        expect(@taglineView.activeBrand).toBe(1)
    beforeEach ->
      @brandClass = 'brand3'
      @activeBrand = @taglineView.activeBrand
      @taglineView.$activeTagline.addClass(@brandClass)
      @taglineView.changeBrand()
    it "should remove current brand classes", ->
      expect(@taglineView.$activeTagline).not.toHaveClass(@brandClass)
    it "should apply the new brand class", ->
      expect(@taglineView.$activeTagline).toHaveClass("brand#{@activeBrand}")
      