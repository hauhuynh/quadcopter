through = require 'through2'
astFactory = require './ast'
modules = require './generate-modules'
order = require './order-defines'

module.exports = ->
  through.obj (file, encoding, callback) ->
    stream = @

    if file.isNull()
      stream.push(null)
      callback()

    if file.isStream()
      stream.push(null)
      callback('gulp-amd-optimise does not support streaming. Barfing.')

    if file.isBuffer()
      ast = astFactory.build file.contents.toString()

      order ast.defines(), (error, ordered) ->
        sourceCode = modules.generate(ordered)
        file.contents = new Buffer(sourceCode)
        stream.push(file)
        callback()

