class Names
	constructor: ->
		@sex = []
		@sex[ 'm' ] = [
			"Peter", "Mike", "Wesley", "Tom", "Lawrence", "John", "Alex", "Jake", "Tobias", "Anthony", "Jurriaan"
		]
		@sex[ 'f' ] = [
			"Bianca", "Nina", "Judith", "Emily", "Suzanne", "Fleur", "Emma", "Anna", "Anne", "Samantha", "Ashley"
		]
	
	getName: (s) ->
		return @sex[ s ][ Math.floor( Math.random() * @sex[ s ].length ) ]

module.exports = new Names