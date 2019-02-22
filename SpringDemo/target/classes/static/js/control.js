	'use strict';
	var app = angular.module('myApp',['ngRoute']);
	 
	app.config(['$routeProvider', function($routeProvider) {
	
	
	  $routeProvider
  .when('/', {
    templateUrl : 'final/final',
  //  controller  : 'inputController'
  })
  
  .when('/input/schedule', {
    templateUrl : 'input/schedule',
  //  controller  : 'inputController'
  })
  .when('/input/actuals', {
    templateUrl : 'input/actuals',
  //  controller  : 'inputController'
  })

  .otherwise({redirectTo: '/'})
	}]);

