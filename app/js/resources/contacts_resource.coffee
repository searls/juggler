angular.module("app").factory "ContactsResource", ($resource) ->
  $resource("/api/contacts")

