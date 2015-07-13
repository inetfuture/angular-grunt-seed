'use strict'

module.exports =
  dist:
    cwd: 'src/'
    src: [
      '**/*.jade'
      '!index.jade'
    ]
    dest: '.tmp/templates.js'
    options:
      source: (source, path) ->
        require('jade').renderFile path
      url: (url) ->
        url.replace /\.jade$/, '.html'
      module: 'app'
      usemin: 'main.js'
