links = ["http://www.archive.org/download/MoonlightSonata_755/Beethoven-MoonlightSonata.mp3",
          "http://www.archive.org/download/bolero_69/Bolero.mp3"]

@MusicBox = React.createClass
  getInitialState: ->
    key: links[0]

  getNextSong: ->
    @setState key: links[1]

  singOut: ->
    @props.performLogIn false

  render: ->
    React.DOM.div
      className: 'box'
      key: @state.key
      React.DOM.h4
        className: 'wrap'
        'You may listen songs now!'
      React.createElement AudioPlayer, url: @state.url
      React.createElement ButtonsPanel, getNextSong: @getNextSong, singOut: @singOut