'use strict'

module.exports =
  dist:
    files: [
      expand: true
      cwd: 'src/'
      src: ['**/*.jade']
      dest: '.tmp'
      ext: '.html'
    ]
    options:
      pretty: true
