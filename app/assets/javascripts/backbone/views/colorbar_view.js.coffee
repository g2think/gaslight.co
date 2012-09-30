class Gaslight.Views.ColorbarView extends Backbone.View
  initialize: ->
    @$colorbars = @$el.children()
  
  activate: (index = 0) ->
    @deactivateAll()
    @$colorbars.eq(index).addClass('active')

  deactivateAll: ->
    @$colorbars.removeClass('active')
