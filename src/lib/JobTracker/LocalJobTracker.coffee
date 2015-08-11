class LocalJobTracker
   constructor: (options) ->
      {@taskSize} = options

      @taskId = 0
      @jobQueue = []
      @activeTasks = {}

   submit: (job) ->
      @jobQueue.push(job)

   startJob: () ->
      @activeJob = @jobQueue.shift()

   getTask: () ->
      return new Task(@taskId, 'map', @activeJob.get(@taskSize))
      
   submitResult: (taskId, result) ->
