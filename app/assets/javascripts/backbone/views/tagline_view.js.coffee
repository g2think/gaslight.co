class Gaslight.Views.TaglineView extends Backbone.View

  animation:
    interval: 4000
    target: 'h1 span'
    duration: 1000
    delay: 200
    easing: 'easeInOutExpo'
    
  initialize: (options) ->
    @$taglines = @$el.children()
    @$activeTagline = @$el.find('.active')
    @animate @$activeTagline, {left: 0}
    @createTimer()

  createTimer: ->
    intervalCallback = => @transition()
    @timer = setInterval intervalCallback, @animation.interval

  transition: (index) ->
    newTagline = @$taglines.eq index or @getRandomIndex()
    @animate @$activeTagline, {left: '-100%'}, =>
      @activate newTagline
      @animate newTagline, {left: '0'}, =>

  animate: (element, options, callback)->
    animationTargets = element.find(@animation.target)
    
    for target, i in animationTargets
      done = i is animationTargets.length - 1
      do (done) =>
        $(target).stop().delay(@animation.delay * i).animate options, @animation.duration, @animation.easing, ->      
          if done
            callback() if callback

  activate: (element)->
    @$taglines.removeClass('active')
    element.addClass('active')
    @$activeTagline = element

  getRandomIndex: ->  
    Math.floor(Math.random() * @$taglines.length);
