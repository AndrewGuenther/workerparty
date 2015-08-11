class Job
   constructor: (@name, @inputStream, @outputStream, @mapper, @reducer) ->

   get: () -> return @inputStream.get()
   put: (key, value) -> @outputStream.put(key, value)
