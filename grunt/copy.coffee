'use strict'

module.exports =
  dist:
    files: [
      'dist/index.html': '.tmp/index.html'
    ,
      expand: true
      cwd: 'bower_components/'
      src: '**/*'
      dest: 'dist/bower_components'
    ]
