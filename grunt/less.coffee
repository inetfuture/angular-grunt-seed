'use script'

module.exports =
  dist:
    files: [
      expand: true
      cwd: 'src/'
      src: ['**/*.less', '!**/_*.less']
      dest: '.tmp'
      ext: '.css'
    ]
    options:
      sourceMap: true
      paths: ['bower_components', 'src']
