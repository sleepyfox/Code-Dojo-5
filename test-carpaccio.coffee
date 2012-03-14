vows = require 'vows'
assert = require 'assert'
basket = require './carpaccio'
Basket = basket.Basket

vows
  .describe("Shopping basket test")
  .addBatch
    'Given a new shopping basket with nothing in it':
      topic: ->
        new Basket 0
      'when we get the value then the value of the basket is zero': (topic) ->
        assert.equal topic.value, 0

  .addBatch
    'Given a shopping basket with $100 in it':
      topic: ->
      	new Basket 100
      'when no discount is applied then the value of the basket is $100': (topic) ->
        assert.equal topic.value, 100


  .export(module)
