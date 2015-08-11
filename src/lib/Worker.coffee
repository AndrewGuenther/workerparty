class Worker
   constructor: (@tracker, @mapper, @reducer) ->

   doTask: () ->
      if task = @tracker.getTask() is false then return false

      switch task.type
         when "map"
            (@mapper.map(key, value) for key, value of task.data)
            result = @mapper.collect()
            if @reducer.combine?
               result = (@reducer.combine(key, values) for key, values in result)
         when "reduce"
            result = (@reducer.reduce(key, values) for key, values of task.data)

      @tracker.submitResult(task.id, result)
      return true
