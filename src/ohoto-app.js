var ohotoApp = angular.module('ohotoApp', [
  'ngRoute',
  'ohotoControllers'
]);

ohotoApp.config(
  [ '$routeProvider',
    function ($routeProvider) {
      $routeProvider
        .when('/profile', {
          templateUrl: 'partials/profile.html',
          controller: 'ProfileCtrl'
        })
        .otherwise({
          redirectTo: '/profile'
        });
    }
  ]
);
