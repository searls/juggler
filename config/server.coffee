module.exports = drawRoutes: (app) ->

  app.get "/api/contacts", (req, res) ->
    res.json [
      name: "Andy Vida"
      email: "justin+andy@testdouble.com"
      frequency:  3
      lastContactedAt: undefined
      createdAt: new Date("2013-08-08 12:00:00")
    ,
      name: "Jason Karns"
      email: "justin+jason@testdouble.com"
      frequency:  7
      lastContactedAt: new Date("2013-08-07 12:00:00")
      createdAt: new Date("2012-07-07 12:00:00")
    ,
      name: "Todd Kaufman"
      email: "justin+todd@testdouble.com"
      frequency:  30
      lastContactedAt: new Date("2013-06-07 12:00:00")
      createdAt: new Date("2012-06-07 12:00:00")
    ]

