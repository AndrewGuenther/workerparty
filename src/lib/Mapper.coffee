class Mapper
   constructor: (@map) ->
      @emmitted = {}

   emit: (key, value) ->
      if key not in @emmitted
         @emmitted[key] = []
      @emmitted[key].push(value)

   collect: () -> return @emmitted
