var ohotoControllers = angular.module('ohotoControllers', []);

ohotoControllers.controller('ItemListCtrl', ['$scope', '$routeParams', 'Item', ($scope, $routeParams, Item) => {
  console.log($routeParams.tag);
  $scope.items = Item.query({ tag: $routeParams.tag });
}]);

ohotoControllers.controller('ItemDetailCtrl', ['$scope', '$routeParams', 'Item', ($scope, $routeParams, Item) => {
  $scope.item = Item.get({ itemId: $routeParams.itemId });
}]);

ohotoControllers.controller('ShopListCtrl', ['$scope', 'Shop', ($scope, Shop) => {
  $scope.shops = Shop.query();
}]);

ohotoControllers.controller('ShopDetailCtrl', ['$scope', '$routeParams', 'Shop', ($scope, $routeParams, Shop) => {
  $scope.shop = Shop.get({ shopId: $routeParams.shopId });
}]);

ohotoControllers.controller('UserListCtrl', ['$scope', 'User', ($scope, User) => {
  $scope.users = User.query();
}]);

ohotoControllers.controller('UserDetailCtrl', ['$scope', '$routeParams', 'User', ($scope, $routeParams, User) => {
  $scope.user = User.get({ userId: $routeParams.userId });
}]);
