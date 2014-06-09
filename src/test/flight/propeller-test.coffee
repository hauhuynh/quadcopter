
define 'flight/propeller-test', ['spec-helper', 'mini-test-it'], (specHelper, it) ->

  it 'propeller should accelerate to maximum speed', (test) ->
    calledWithArguments = []

    stubs = 'espruino/analog-write': ->
      calledWithArguments = arguments.slice(0)

    specHelper.require 'flight/propeller', stubs, (propeller) ->
      propeller.create(78).accelerateTo(2000)

      test.expect(calledWithArguments).toBeTruthy()
      test.expect(calledWithArguments.length).toBe(3)
      test.expect(calledWithArguments[0]).toBe(78)
      test.expect(calledWithArguments[1]).toBe(0.1)
      test.expect(calledWithArguments[2]?.freq).toBe(50)
      test.done()

  it 'propeller should accelerate to minimum speed', (test) ->
    calledWithArguments = []

    stubs = 'espruino/analog-write': ->
      calledWithArguments = arguments.slice(0)

    specHelper.require 'flight/propeller', stubs, (propeller) ->
      propeller.create(78).accelerateTo(1000)

      test.expect(calledWithArguments).toBeTruthy()
      test.expect(calledWithArguments.length).toBe(3)
      test.expect(calledWithArguments[1]).toBe(0.05)
      test.done()

  it 'propeller should fail when pin is not specified', (test) ->
    capturedMessage = null
    stubs = 'utility/fail-whale': (message) -> capturedMessage = message

    specHelper.require 'flight/propeller', stubs, (propeller) ->
      propeller.create(undefined)
      test.expect(capturedMessage).toBe('failed to create propeller, pin (undefined) was not specified.')
      test.done()
