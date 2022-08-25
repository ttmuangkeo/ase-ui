class Helpers
  simulateOptions:
    pointerX: 0
    pointerY: 0
    button: 0
    ctrlKey: false
    altKey: false
    shiftKey: false
    metaKey: false
    bubbles: true
    cancelable: true
    randomCount: 0
  eventMatchers:
    HTMLEvents: /^(?:load|unload|abort|error|select|change|submit|reset|focus|blur|resize|scroll)$/
    MouseEvents: /^(?:click|dblclick|mouse(?:down|up|over|move|out))$/

  constructor: (name) ->
    @name = name

  simulate: (element, eventName) ->
    options = @extendSimulate(@simulateOptions, arguments[2] or {})
    oEvent = undefined
    eventType = null
    for name of @eventMatchers
      if @eventMatchers[name].test(eventName)
        eventType = name
        break
    throw new SyntaxError("Only HTMLEvents and MouseEvents interfaces are supported")  unless eventType
    if document.createEvent?
      oEvent = document.createEvent(eventType)
      if eventType is "HTMLEvents"
        oEvent.initEvent eventName, options.bubbles, options.cancelable
      else
        oEvent.initMouseEvent eventName, options.bubbles, options.cancelable, document.defaultView, options.button, options.pointerX, options.pointerY, options.pointerX, options.pointerY, options.ctrlKey, options.altKey, options.shiftKey, options.metaKey, options.button, element

      #console.log(element);
      element.dispatchEvent oEvent
    else
      options.clientX = options.pointerX
      options.clientY = options.pointerY
      evt = document.createEventObject()
      oEvent = @extendSimulate(evt, options)
      element.fireEvent "on" + eventName, oEvent
    element

  extendSimulate: (destination, source) ->
    for property of source
      destination[property] = source[property]
    destination

window.Helpers = new Helpers()