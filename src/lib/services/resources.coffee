'use strict'

angular
.module 'app'
.run (Restangular, C) ->
  Restangular.setBaseUrl C.apiBaseUrl

  Restangular.addResponseInterceptor (data, operation) ->
    if operation is 'getList' and _.isPlainObject(data) and data.items
      newData = data.items
      for own k, v of data
        newData[k] = v
      return newData

    data

  Restangular.setErrorInterceptor (err) ->
    switch err.status
      when 401
        # TODO

      else
        return true

    # Stop error propagation
    false

.factory 'R', (Restangular) ->
  Restangular
