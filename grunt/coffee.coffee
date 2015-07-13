'use strict'

module.exports =
  options:
    sourceMap: true
  dist:
    files: [
      expand: true
      cwd: 'src/'
      src: '**/*.coffee'
      dest: '.tmp'
      ext: '.js'
    ]
