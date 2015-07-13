'use script'

module.exports = ->
  task = { noop: {} }

  configName = process.env.CONFIG
  return task unless configName

  config = require('../configs')[configName]
  return task unless config

  if config.apiBaseUrl
    task.apiBaseUrl =
      files:
        '.tmp/lib/': '.tmp/lib/config.js'
      options:
        replacements: [
          pattern: /apiBaseUrl:\s*.*$/m
          replacement: "apiBaseUrl: '#{config.apiBaseUrl}',"
        ]

  task
