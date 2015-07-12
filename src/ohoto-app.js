var ohotoApp = angular.module('ohotoApp', [
  'ngRoute',
  'ohotoControllers',
  'ohotoServices'
]);

ohotoApp
  .config(
    [ '$routeProvider',
      ($routeProvider) => {
        $routeProvider
          .when('/items', {
            templateUrl: 'partials/item-list.html',
            controller: 'ItemListCtrl'
          })
          .when('/item/:itemId', {
            templateUrl: 'partials/item.html',
            controller: 'ItemDetailCtrl'
          })
          .when('/shops', {
            templateUrl: 'partials/shop-list.html',
            controller: 'ShopListCtrl'
          })
          .when('/shop/:shopId', {
            templateUrl: 'partials/shop.html',
            controller: 'ShopDetailCtrl'
          })
          .when('/users', {
            templateUrl: 'partials/user-list.html',
            controller: 'UserListCtrl'
          })
          .when('/user/:userId', {
            templateUrl: 'partials/user.html',
            controller: 'UserDetailCtrl'
          })
          .otherwise({
            redirectTo: '/items'
          });
      }
    ]
  )

  .directive('ngBackButton', ['$window', ($window) => {
    return {
      restrict: 'A',
      link: (scope, element, attrs) => {
        element[0].addEventListener('click', () => {
          $window.history.back();
        });
      }
    };
  }])

  .directive('ngGoTo', ['$rootScope', '$location', ($rootScope, $location) => {
    return {
      restrict: 'A',
      link: (scope, element, attrs) => {
        element[0].addEventListener('click', () => {
          $rootScope.$apply(() => {
            $location.path(attrs.ngGoTo);
          });
        });
      }
    };
  }]);
