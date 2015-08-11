config = require('./config')

http = require('http')

if config.environment is "development"
   express = require('express')
   app = express()
   app.use('/', express.static(__dirname + '/demo'))
   app.use('/client', express.static(__dirname + '/client'))

   http = http.Server(app)

io = require('socket.io')(http)

http.listen(8000, () -> console.log('Listening on *:8000'))
