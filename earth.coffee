Output = require "./output"
Person = require "./person"

module.exports = class Earth
	constructor: ->
		Output.show "Shaping Earth..."
		@day = 0
		@objects = []
		@orbiting = false
		@orbitTimer = null
		@existence = false
		@orbitMs = 1000
	
	# Orbit
	orbit: ->
		try
			if @orbeting is false or @orbitTimer is null
				clearInterval @orbitTimer
				scope = @
				@orbitTimer = setInterval (-> scope.orbit()), @orbitMs
				@orbeting = true
	
			if @existence is false
				@existence = true
		
				male = new Person "m", 18
				female = new Person "f", 16
				@spawn male, female
		
			# orbiting
			# First, let the people work
			obj.work() for obj in @objects[ key ] for own key, val of @objects
		catch error
			Output.show "[ERROR] " + error
	
	# Pause the orbit
	pause: ->
		clearInterval @orbitTimer
		@orbeting = false
	
	# Spawn a new object
	spawn: ->
		throw "No object to spawn" if arguments.length is 0
		for object in arguments
			objName = object.getName()
			@objects[ objName ] = [] if @objects[ objName ] is undefined
			@objects[ objName ].push object 
			Output.show "Spawning object: " + objName