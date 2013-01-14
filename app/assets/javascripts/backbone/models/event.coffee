class Gaslight.Models.Event extends Backbone.Model
  toJSON: ->
    hash = super
    hash.occursOn = @occursOn()
    hash.person.firstName = @firstName()
    hash

  occursOn: ->
    date = new Date("#{@get('occurs_on')}T06:00:00Z")
    moment(date).format("MMMM Do")

  firstName: ->
    person = @get('person')
    if person.name.match(/chris/i)
      [firstName, lastName] = person.name.split(' ')
      name = "#{firstName} #{lastName[0]}."
    else
      name = person.first_name
    name

