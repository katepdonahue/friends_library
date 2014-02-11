'use strict';

var friendLibApp = angular.module('friendLibApp', [
  'ngRoute',
  'friendLibControllers'
  ]);

friendLibApp.config([
  '$routeProvider',
  function($routeProvider) {
    $routeProvider.
    when('/users', {
      templateUrl: 'app/partials/users.html',
      controller: 'UserListCtrl'
    }).
    when('/users/:id', {
      templateUrl: 'app/partials/user-detail.html',
      controller: 'UserDetailCtrl'
    }).
    when('/', {
      templateUrl: 'app/partials/books.html',
      controller: 'BookListCtrl'
    }).
    when('/books/:id', {
      templateUrl: 'app/partials/book-detail.html',
      controller: 'BookDetailCtrl'
    }).
    when('/authors', {
      templateUrl: 'app/partials/authors.html',
      controller: 'AuthorListCtrl'
    }).
    when('/authors/:id', {
      templateUrl: 'app/partials/author-detail.html',
      controller: 'AuthorDetailCtrl'
    });
  }]);