Object.prototype.getName = ->
	funcNameRegex = /function (.{1,})\(/;
	results = (funcNameRegex).exec @constructor.toString()
	return ( if results and results.length then results[1] else "" )