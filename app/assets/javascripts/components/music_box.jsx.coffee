links = ["http://www.archive.org/download/MoonlightSonata_755/Beethoven-MoonlightSonata.mp3", "http://www.archive.org/download/bolero_69/Bolero.mp3"]

@MusicBox = React.createClass
  getInitialState: ->
    key: links[0]

  getNextSong: (value) ->
    alert "inside get next"
    alert @state.key
    @setState key: links[1]

  render: ->
    React.DOM.div
      className: 'box'
      key: @state.key
      React.createElement AudioPlayer, url: @state.key
      React.createElement NextButton, handleClicked: @getNextSong