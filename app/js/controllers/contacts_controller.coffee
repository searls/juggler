angular.module("app").controller "ContactsController", ($scope, $timeout, ContactsResource, TimeService) ->
  $scope.contacts = ContactsResource.query()

  $scope.shouldBeContactedOn = TimeService.shouldBeContactedOn
