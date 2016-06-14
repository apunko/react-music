@AudioPlayer = React.createClass
  getInitialState: ->
    url: @props.url
  getDefaultProps: ->
    url: "123"
  render: ->
    React.createElement(
      "audio",
      { controls: true, preload: "auto", type: "audio/mp3", src: @state.url},
      "Your browser does not support the audio element."
    )