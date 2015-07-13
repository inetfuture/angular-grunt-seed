'use strict'

module.exports =
  dist: ['jade', 'less', 'coffee']
  dev:
    tasks: ['watch', 'connect:dev']
    options:
      logConcurrentOutput: true
