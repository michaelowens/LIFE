EarthObject = require "./EarthObject"
Output = require "./output"
Names = require "./names"

module.exports = class Person extends EarthObject
	constructor: (@sex, @age) ->
		throw "Incorrect sex" if @sex not in [ 'm', 'f' ]
		@working = false
		@name = @setName()
		Output.show "A new person (" + @sex + ", " + @age + ") has been born: " + @name + "!"
	
	setName: ->
		@name = Names.getName @sex
	
	work: ->
		Output.show "I am " + @name + " and I am not working :D"