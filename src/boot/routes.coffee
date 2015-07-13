'use strict'

angular
.module 'app'
.config ($stateProvider, $urlRouterProvider) ->
  $stateProvider
  .state 'home',
    url: '/home'
    controller: 'HomeCtrl as vm'
    templateUrl: 'home/home.html'

  $urlRouterProvider.otherwise '/home'

.run ($rootScope, $log) ->
  $rootScope.$on '$stateChangeError', (event, toState, toParams, fromState, fromParams, error) ->
    $log.error '$stateChangeError', { event, toState, toParams, fromState, fromParams, error }
