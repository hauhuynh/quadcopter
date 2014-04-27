
define 'repository/metrics', ['utility/time', 'espruino/file', 'utility/random-string-generator'], (time, file, randomString) ->
  metricsFile = "metrics-#{randomString()}.txt"

  save: (name, value) ->
    file(metricsFile).append "#{time()}|#{name}|#{value}\n"