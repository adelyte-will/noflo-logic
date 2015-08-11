{Gate} = require '../lib/Gate'

class XorGate extends Gate
	evaluate: (array) ->
		if (array[0] || array[1]) && !(array[0] && array[1]) then 1 else 0

exports.getComponent = -> new XorGate