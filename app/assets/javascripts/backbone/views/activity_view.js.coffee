class Gaslight.Views.ActivityView extends Backbone.View
  el: '#activities'

  constructor: ->
    super
    @collection = new Gaslight.Collections.Events
    @collection.on 'reset', => @addEvents()
    @collection.fetch()

  addEvents: ->
    for event in @collection.models
      @addEvent event
    @show()

  show: ->
    @$('.spinner').addClass('inactive')
    @$('.events').fadeIn()

  addEvent: (event) ->
    view = new Gaslight.Views.EventView(model: event)
    @$('.events').append(view.render())

