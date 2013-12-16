should = require 'should'
Person = require '../src/person'

describe 'Person', ->
    it 'should error when incorrect number of parameters given', ->
        (-> new Person).should.throw 'Incorrect number of arguments, expected 1 or more'
        (-> new Person 'm').should.not.throw()
        (-> new Person 'f').should.not.throw()
        (-> new Person 'm', 10).should.not.throw()
        (-> new Person 'f', 10).should.not.throw()

    it 'should only allow the genders "m" and "f"', ->
        (-> new Person 'a').should.throw 'Incorrect sex'
        (-> new Person '1').should.throw 'Incorrect sex'
        (new Person 'm').sex.should.equal 'm'
        (new Person 'f').sex.should.equal 'f'

    it 'should only allow ages between 0 and 120', ->
        (-> new Person 'm', -1).should.throw 'Incorrect age'
        (-> new Person 'f', -5).should.throw 'Incorrect age'
        (new Person 'm', 0).age.should.equal 0
        (new Person 'f', 95).age.should.equal 95
        (new Person 'm', 120).age.should.equal 120
        (-> new Person 'f', 121).should.throw 'Incorrect age'