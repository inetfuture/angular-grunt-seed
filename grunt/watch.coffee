'use strict'

module.exports =
  jade:
    files: ['src/**/*.jade', '!src/index.jade']
    tasks: ['newer:jade']

  index:
    files: ['src/index.jade']
    tasks: ['newer:jade', 'angularFileLoader:index']

  less:
    files: ['src/**/*.less']
    tasks: ['less']

  coffee:
    files: ['src/**/*.coffee']
    tasks: ['newer:coffee']

  angularFileLoader:
    files: ['.tmp/**/*.js']
    tasks: ['angularFileLoader']

  livereload:
    files: ['.tmp/**/*']
    options:
      livereload:
        port: 3702
