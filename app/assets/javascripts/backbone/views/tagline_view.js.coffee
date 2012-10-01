class Gaslight.Views.TaglineView extends Backbone.View

  animation:
    interval: 4000
    target: 'h1 span'
    duration: 800
    delay: 200
    easing: 'easeInOutExpo'

  activeBrand: 1
    
  initialize: (options) ->
    @$taglines = @$el.children()
    @activate @$taglines.first()
    @animate @$activeTagline, {left: 0}
    @createTimer()

  createTimer: ->
    intervalCallback = => @transition()
    @timer = setInterval intervalCallback, @animation.interval

  transition: (index) ->
    newTagline = @$taglines.eq index or @getNextIndex()
    @animate @$activeTagline, {left: '-100%'}, =>
      @activate newTagline
      @animate newTagline, {left: '0'}

  animate: (element, options, callback)->
    animationTargets = element.find(@animation.target)
    
    for target, i in animationTargets
      done = i is animationTargets.length - 1
      do (done) =>
        $(target).stop().delay(@animation.delay * i).animate options, @animation.duration, @animation.easing, ->      
            callback() if done and callback 

  activate: (element)->
    @$taglines.removeClass('active')
    element.addClass('active')
    @$activeTagline = element
    @changeBrand()

  changeBrand: ->
    @$activeTagline.removeClass("brand1 brand2 brand3")
    @$activeTagline.addClass("brand#{@activeBrand}")
    @trigger "changeBrand", @activeBrand
    @activeBrand = if @activeBrand is 3 then 1 else @activeBrand + 1

  getNextIndex: ->
    activeTaglineIndex = @$taglines.index(@$activeTagline)
    if activeTaglineIndex is @$taglines.length - 1 then 0 else activeTaglineIndex + 1
