@NextButton = React.createClass
  getNextSong: (e) ->
    alert "clicked!"
    @props.getNextSong "value"

  singOut: ->
    alert "clicked!"
    @props.singOut "value"

  render: ->
    React.DOM.div
      className: 'buttonsPanel'
      React.DOM.a
        onClick: @singOut
        className: 'button'
        'Sing out'
      React.DOM.a
        onClick: @getNextSong
        className: 'button'
        'Next'