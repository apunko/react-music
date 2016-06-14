@MusicBox = React.createClass
  getInitialState: ->
    key: getNextSongUrl()

  getNextSong: ->
    @setState key: getNextSongUrl()

  singOut: ->
    @props.performLogIn false

  render: ->
    React.DOM.div
      className: 'box'
      key: @state.key
      React.DOM.h4
        className: 'wrap'
        'You may listen songs now!'
      React.createElement AudioPlayer, url: @state.key
      React.createElement ButtonsPanel, getNextSong: @getNextSong, singOut: @singOut

links = ["http://www.archive.org/download/MoonlightSonata_755/Beethoven-MoonlightSonata.mp3",
  "http://www.archive.org/download/bolero_69/Bolero.mp3"]

value = 1
@getNextSongUrl = () ->
  value = value ^ 1
  links[value]