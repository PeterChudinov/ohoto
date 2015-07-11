var ohotoApp = angular.module('ohotoApp', [
  'ngRoute',
  'ohotoControllers',
  'ohotoServices'
]);

ohotoApp.config(
  [ '$routeProvider',
    function ($routeProvider) {
      $routeProvider
        .when('/items', {
          templateUrl: 'partials/items.html',
          controller: 'ItemsCtrl'
        })
        .when('/profile', {
          templateUrl: 'partials/profile.html',
          controller: 'ProfileCtrl'
        })
        .otherwise({
          redirectTo: '/items'
        });
    }
  ]
);
