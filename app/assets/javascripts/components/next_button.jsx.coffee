@NextButton = React.createClass
  getNextSong: (e) ->
    alert "clicked!"
    @props.getNextSong "value"

  singOut: ->
    alert "clicked!"
    $.ajax
      method: 'POST'
      url: '/sing_out'
      dataType: 'JSON'
      success: (data) =>
        alert "in success"
        @props.singOut "value"
      error: (data) =>
        alert "in error"
        @props.singOut "value"

  render: ->
    React.DOM.div
      className: 'buttonsPanel'
      React.DOM.a
        onClick: @getNextSong
        className: 'button'
        'Next'
      React.DOM.a
        onClick: @singOut
        className: 'button'
        'Sing out'