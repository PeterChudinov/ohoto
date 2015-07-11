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
          templateUrl: 'partials/item-list.html',
          controller: 'ItemListCtrl'
        })
        .when('/item/:itemId', {
          templateUrl: 'partials/item.html',
          controller: 'ItemDetailCtrl'
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
