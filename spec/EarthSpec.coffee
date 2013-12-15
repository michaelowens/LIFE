should = require 'should'
Earth = require '../src/earth'

describe 'Earth', ->
    it 'should have the necessary methods to operate', ->
        should.notStrictEqual Earth.constructor, undefined
        should.notStrictEqual Earth.prototype.orbit, undefined

    it 'should have the necessary properties to operate', ->
        Earth.should.have.property 'orbiting', false
        Earth.should.have.property 'orbitTime'
