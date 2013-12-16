The **Person** class is a simulator of the human being and extends from LivingCreature.

Import the necessary files:

    # LivingCreature = require './livingCreature'

    module.exports = class Person #extends LivingCreature

Initialize a Person with a sex and age.

        constructor: (@sex, @age) ->
            throw new Error 'Incorrect number of arguments, expected 1 or more' unless arguments.length
            throw new Error 'Incorrect sex' unless @sex in ['m', 'f']

            @age = 0 unless @age?
            throw new Error 'Incorrect age' unless 0 <= @age <= 120
