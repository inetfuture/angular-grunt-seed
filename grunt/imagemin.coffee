'use strict'

module.exports =
  dist:
    files: [
      expand: true
      cwd: 'src/'
      src: '**/*.{png,jpg,jpeg,gif}'
      dest: 'dist/'
    ]
