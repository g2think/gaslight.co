#= require spec

describe 'Event', ->
  beforeEach ->
    @event = new Gaslight.Models.Event
      id: 19
      name: "Queen City Merge"
      location: "Cincinnati OH"
      occurs_on: "2013-05-09"
      verb: "attending"
      url: "http://qcmerge.com"
      person:
        id: 21
        name: "Tammy Gambrel"
        first_name: "Tammy"
        github: "TammyGambrel"
        twitter: "SilversunTammy"
        avatar: "http://gaslight.dev/assets/team/tammy.jpg"

  describe '#occursOn', ->
    it "formats the date", ->
      @event.occursOn().should.equal "May 9th"

  describe '#firstName', ->
    describe 'not a Chris', ->
      it 'only shows first name', ->
        @event.firstName().should.equal "Tammy"

    describe 'a Chris', ->
      beforeEach ->
        @event.get('person').name = 'Chris Moore'
      it 'shows the last initial if Chris', ->
        @event.firstName().should.equal "Chris M."

  describe '#toJSON', ->
    it 'has the formatted attributes', ->
      @event.toJSON().person.firstName.should.exist
      @event.toJSON().occursOn.should.exist


