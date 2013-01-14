class Gaslight.Views.EventView extends Backbone.View
  className: 'row activity'

  constructor: ->
    super
    @template = _.template($('#eventTemplate').html())

  render: ->
    @$el.html(@template(@model.toJSON()))

