require 'json'

class Author
  
  def self.find_by_tumblr(handle)
    people.find { |person| person[:tumblr] == handle }
  end

  private

  def self.json_hash
    JSON.parse('{
      "people": [
        {
          "id": 14,
          "name": "James Smith",
          "first_name": "James",
          "github": "st23am",
          "tumblr": "st23am",
          "twitter": "st23am",
          "avatar": "http://gaslight.co/assets/team/james.jpg",
          "email": "st23am@gmail.com"
        },
        {
          "id": 7,
          "name": "Chris Nelson",
          "first_name": "Chris",
          "github": "superchris",
          "tumblr": "superchris",
          "twitter": "superchris",
          "avatar": "http://gaslight.co/assets/team/chris_n.jpg",
          "email": "chris@gaslight.co"
        },
        {
          "id": 10,
          "name": "Joel Turnbull",
          "first_name": "Joel",
          "github": "joelturnbull",
          "tumblr": "joelturnbull",
          "twitter": "joelturnbull",
          "avatar": "http://gaslight.co/assets/team/joel.jpg",
          "email": "joelbywan@gmail.com"
        },
        {
          "id": 25,
          "name": "Kristin Lasita",
          "first_name": "Kristin",
          "github": "kclasita",
          "tumblr": "kclasita",
          "twitter": "kclasita",
          "avatar": "http://gaslight.co/assets/team/kristin.jpg",
          "email": "kristin@gaslight.co"
        },
        {
          "id": 22,
          "name": "Kevin Rocwkood",
          "first_name": "Kevin",
          "github": "rockwood",
          "tumblr": "rockwood",
          "twitter": "kevinrockwood",
          "avatar": "http://gaslight.co/assets/team/kevin.jpg",
          "email": "kevin@rockwood.me"
        },
        {
          "id": 9,
          "name": "Bill Barnett",
          "first_name": "Bill",
          "github": "agilous",
          "tumblr": "agilous",
          "twitter": "agilous",
          "avatar": "http://gaslight.co/assets/team/bill.jpg",
          "email": "bill@probas.co"
        },
        {
          "id": 24,
          "name": " Mitch Lloyd",
          "first_name": "Mitch",
          "github": "mitchlloyd",
          "tumblr": "mitchlloyd",
          "twitter": "too_mitch",
          "avatar": "http://gaslight.co/assets/team/mitch.jpg",
          "email": "mitch.lloyd@gmail.com"
        },
        {
          "id": 4,
          "name": "Peter Kananen",
          "first_name": "Peter",
          "github": "pkananen",
          "tumblr": "pkananen",
          "twitter": "pkananen",
          "avatar": "http://gaslight.co/assets/team/peter.jpg",
          "email": "pkananen@gmail.com"
        },
        {
          "id": 21,
          "name": "Tammy Gambrel",
          "first_name": "Tammy",
          "github": "TammyGambrel",
          "tumblr": "tammygambrel",
          "twitter": "SilversunTammy",
          "avatar": "http://gaslight.co/assets/team/tammy.jpg",
          "email": "tammygambrel@gmail.com"
        },
        {
          "id": 26,
          "name": "Michael Guterl",
          "first_name": "Michael",
          "github": "mguterl",
          "twitter": "mguterl",
          "tumblr": "mguterl",
          "avatar": null,
          "email": "michael@gaslight.co"
        },
        {
          "id": 11,
          "name": "Dewayne Greenwood",
          "first_name": "Dewayne",
          "github": "xero6",
          "tumblr": "xero6",
          "twitter": "xero6",
          "avatar": "http://gaslight.co/assets/team/dewayne.jpg",
          "email": "dewayne@xero6.com"
        },
        {
          "id": 5,
          "name": "Doug Alcorn",
          "first_name": "Doug",
          "github": "dougalcorn",
          "tumblr": "dougalcorn",
          "twitter": "dougalcorn",
          "avatar": "http://gaslight.co/assets/team/doug.jpg",
          "email": "dougalcorn@gmail.com"
        },
        {
          "id": 20,
          "name": "Ryan Arthur",
          "first_name": "Ryan",
          "github": "arthurra",
          "tumblr": "arthurra",
          "twitter": "ryanaarthur",
          "avatar": "http://gaslight.co/assets/team/ryan.jpg",
          "email": "ryan@gaslightsoftware.com"
        },
        {
          "id": 3,
          "name": "Chris Moore",
          "first_name": "Chris",
          "github": "cdmwebs",
          "tumblr": "cdmwebs",
          "twitter": "cdmwebs",
          "avatar": "http://gaslight.co/assets/team/chris_m.jpg",
          "email": "chrism@gaslight.co"
        },
        {
          "id": 28,
          "name": "Alex Heflin",
          "first_name": "Alex",
          "github": "heflinao",
          "twitter": "heflinao",
          "avatar": "",
          "tumblr": "heflinao",
          "email": "alex@gaslight.co"
        },
        {
          "id": 29,
          "name": "Laurel Nock",
          "first_name": "Laurel",
          "twitter": "",
          "avatar": "",
          "tumblr": "nockitoff",
          "email": "nockll@ucmail.uc.edu"
        }
      ]
    }').with_indifferent_access
  end

  def self.people
    json_hash[:people]
  end
end
