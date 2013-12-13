should = require 'should'
Person = require '../src/person'

describe 'Person', ->
    describe 'should error when no parameters given', ->
        (-> new Person).should.throw 'Incorrect sex'

    describe 'without age given, should only allow the genders "m" and "f"', ->
        (-> new Person 'a').should.throw 'Incorrect sex'
        (-> new Person '1').should.throw 'Incorrect sex'
        (new Person 'm').sex.should.equal 'm'
        (new Person 'f').sex.should.equal 'f'

    describe 'with age given, should only allow the genders "m" and "f"', ->
        (-> new Person 'a', 21).should.throw 'Incorrect sex'
        (-> new Person '1', 21).should.throw 'Incorrect sex'
        (new Person 'm', 34).sex.should.equal 'm'
        (new Person 'f', 34).sex.should.equal 'f'

    describe 'should only allow ages between 0 and 120', ->
        (-> new Person 'm', -1).should.throw 'Incorrect age'
        (-> new Person 'f', -5).should.throw 'Incorrect age'
        (new Person 'm', 0).age.should.equal 0
        (new Person 'f', 95).age.should.equal 95
        (new Person 'm', 120).age.should.equal 120
        (-> new Person 'f', 121).should.throw 'Incorrect age'
