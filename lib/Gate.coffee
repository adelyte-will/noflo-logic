noflo = require 'noflo'

class Gate extends noflo.Component
	description: 'Boolean Gate'

	constructor: ->
		@storage = [null, null]

		@inPorts = 
			in0: new noflo.Port 'number'
			in1: new noflo.Port 'number'
		@outPorts =
			out: new noflo.Port 'number'

		evaluate = =>
			if @outPorts.out.isAttached()
				@outPorts.out.send @evaluate @storage

		@inPorts.in0.on 'data', (data) =>
			@storage[0] = parseInt(data)
			do evaluate unless @storage[1] == null
		@inPorts.in1.on 'data', (data) =>
			@storage[1] = parseInt(data)
			do evaluate unless @storage[0] == null

exports.Gate = Gate