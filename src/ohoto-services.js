const prefix = window.location.hostname === 'localhost' ?
               '//private-d5015-ohoto.apiary-mock.com' :
               '';

var ohotoServices = angular.module('ohotoServices', ['ngResource']);

ohotoServices.factory('Item', ['$resource', ($resource) => {

  return $resource(prefix + '/items/:id', {}, {
    query: {
      method: 'GET',
      params: {
        id: ''
      },
      isArray: true
    }
  });
}]);
