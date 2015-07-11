var ohotoControllers = angular.module('ohotoControllers', []);

ohotoControllers.controller('ProfileCtrl', ['$scope', ($scope) => {
  $scope.nowTime = Date.now();
  $scope.kek = 'kek';
  window.setInterval(() => {
    $scope.$apply(() => {
      $scope.nowTime = Date.now();
    });
  }, 1000);
}]);
