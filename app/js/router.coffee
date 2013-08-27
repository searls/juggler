angular.module("app").config ($routeProvider) ->
  $routeProvider.when "/contacts",
    templateUrl: "contacts.html"
    controller: "ContactsController"

  $routeProvider.otherwise redirectTo: "/contacts"
