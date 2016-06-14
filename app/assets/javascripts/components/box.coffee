@Box = React.createClass
  getInitialState: ->
    logged_in: false

  loggedIn: (data) ->
    alert "logged in"
    alert data.responseText
    @setState logged_in: true

  render: ->
    if @state.logged_in
      React.createElement MusicBox
    else
      React.createElement LoginForm, handleLogedIn: @loggedIn