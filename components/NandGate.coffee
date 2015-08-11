{Gate} = require '../lib/Gate'

class NandGate extends Gate
	evaluate: (array) ->
		if !(array[0] && array[1]) then 1 else 0

exports.getComponent = -> new NandGate