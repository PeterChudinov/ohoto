var ohotoControllers = angular.module('ohotoControllers', []);

ohotoControllers.controller('ItemListCtrl', ['$scope', 'Item', ($scope, Item) => {
  $scope.items = Item.query();
}]);

ohotoControllers.controller('ItemDetailCtrl', ['$scope', '$routeParams', 'Item', ($scope, $routeParams, Item) => {
  $scope.item = Item.get({ itemId: $routeParams.itemId });
}]);

ohotoControllers.controller('ProfileCtrl', ['$scope', ($scope) => {
  $scope.nowTime = Date.now();
  $scope.kek = 'kek';
  window.setInterval(() => {
    $scope.$apply(() => {
      $scope.nowTime = Date.now();
    });
  }, 1000);
}]);
