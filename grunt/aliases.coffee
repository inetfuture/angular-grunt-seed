'use strict'

module.exports =
  dev: [
    'clean:dist'
    'concurrent:dist'
    'angularFileLoader:dist'
    'concurrent:dev'
  ]
  dist: [
    'clean:dist'
    'concurrent:dist'
    'angularFileLoader:dist'
    'string-replace'
    'useminPrepare'
    'ngtemplates:dist'
    'concat:generated'
    'ngAnnotate:dist'
    'cssmin:generated'
    'uglify:generated'
    'imagemin:dist'
    'copy:dist'
    'filerev:dist'
    'usemin'
  ]
  prod: [
    'dist'
    'connect:prod'
  ]
  default: 'dev'
