const prefix = window.location.hostname === 'localhost' ?
               '//private-d5015-ohoto.apiary-mock.com' :
               '//api.oho.to';

var ohotoServices = angular.module('ohotoServices', ['ngResource']);

ohotoServices.factory('Item', ['$resource', ($resource) => {

  return $resource(prefix + '/items/:itemId', {}, {
    query: {
      method: 'GET',
      params: {
        itemId: ''
      },
      isArray: true
    }
  });
}]);
