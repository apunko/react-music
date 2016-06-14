@ButtonsPanel = React.createClass
  getNextSong: ->
    @props.getNextSong()

  singOut: ->
    $.ajax
      method: 'DELETE'
      url: '/sing_out'
      success: =>
        @props.singOut()
      error: =>
        alert "Sorry errors occured, please try sing out again"

  render: ->
    React.DOM.div
      className: 'buttonsPanel'
      React.DOM.a
        onClick: @getNextSong
        className: "button wrap"
        'Next'
      React.DOM.a
        className: "button wrap"
        onClick: @singOut
        'Sing out'