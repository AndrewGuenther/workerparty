require('fs')

class JSONStream
   constructor: (options) ->
      {@inputFile, @outputFile} = options

      if @inputFile?
         fs.readFile(@input, (err, data) ->
            if (err) then throw err
            @inputData = JSON.parse(data)
         )

      if @outputFile?
         @outputData = {}

   get: () ->
      for key, value in data
         yield {key: value}


   put: (key, value) ->
      @outputData[key] = value

   close: () ->
      fs.writeFile(@outputFile, JSON.stringify(@outputData))
