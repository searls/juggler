angular.module("app").directive "addTemporalHighlighting", () ->
  restrict: "A"
  link: (scope, $el, attr) ->
    shouldBeContactedOn = scope.shouldBeContactedOn(scope.contact)
    $el.addClass if beforeToday(shouldBeContactedOn)
      'overdue'
    else if isToday(shouldBeContactedOn)
      'due'
    else
      'future'

beforeToday = (t) ->
  daify(t) < daify()

isToday = (t) ->
  daify(t) == daify()

daify = (d = new Date()) -> moment(d).format("YYYY-MM-DD")
