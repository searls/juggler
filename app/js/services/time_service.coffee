angular.module("app").service "TimeService", ->
  shouldBeContactedOn: (contact) ->
    startCountingAt = contact.lastContactedAt || contact.createdAt
    moment(startCountingAt).add("days", contact.frequency).toDate()


