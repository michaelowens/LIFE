The **Earth** class simulates the *orbiting* of the world.

    module.exports = class Earth

        @orbiting = false
        @orbitTime = 1000

        @creatures = []
        @creatureCount = 0

        constructor: ->
            console.log 'Start orbiting...'

The **orbit** function represents the orbit of the world by running every `@orbitTime` milliseconds. Due to this orbit everything on *Earth* will do what they are supposed to do.

        orbit: ->
            console.log 'orbit'
