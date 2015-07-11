var ohotoApp = angular.module('ohotoApp', [
  'ngRoute',
  'ohotoControllers'
]);

ohotoApp.config(
  [ '$routeProvider',
    function ($routeProvider) {
      $routeProvider
        .otherwise({
          redirectTo: '/profile'
        });
    }
  ]
);
