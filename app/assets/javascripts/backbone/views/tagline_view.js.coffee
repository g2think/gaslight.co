class Gaslight.Views.TaglineView extends Backbone.View

  interval: 6000

  animation:
    target: 'h1 span'
    duration: 800
    delay: 200
    options:
      left: [-500, 'swing']
    
  initialize: (options) ->
    @$taglines = @$el.children()
    @createInterval() unless options.preventInterval

  createInterval: ->
    intervalCallback = => @transition()
    setInterval intervalCallback, @interval

  transition: (index = @getRandomIndex()) ->
    @deactivateActiveTagline =>
      @activateTagline(index)

  activeTagline: ->
    @$('.active')

  deactivateActiveTagline: (callback)->
    animation = @animation
    animationTargets = @activeTagline().find(@animation.target)
    activeTagline = @activeTagline()

    for target, i in animationTargets
      done = i is animationTargets.length - 1
      do (done) ->
        $(target).stop().delay(animation.delay * i).animate animation.options, animation.duration, ->      
          if done
            animationTargets.removeAttr('style')
            activeTagline.removeClass('active')
            callback()
            
  activateTagline: (index)->
    @$taglines.eq(index).addClass('active')

  getRandomIndex: ->  
    Math.floor(Math.random() * @$taglines.length);
