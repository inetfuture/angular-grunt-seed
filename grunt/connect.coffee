'use strict'

module.exports =
  dev:
    options:
      port: 3701
      base: ['.', '.tmp', 'src']
      livereload: 3702
      keepalive: true
      middleware: (connect, options, middlewares) ->
        middlewares.unshift (req, res, next) ->
          res.setHeader 'Cache-Control', 'no-cache, no-store, must-revalidate'
          next()

        middlewares

  prod:
    options:
      port: 3701
      base: ['dist']
      keepalive: true
