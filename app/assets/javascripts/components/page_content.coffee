@PageContent = React.createClass
  getInitialState: ->
    logged_in: @props.loggingStatus

  performLogIn: (loggedIn) ->
    @setState logged_in: loggedIn

  render: ->
    if @state.logged_in
      React.createElement MusicBox, performLogIn: @performLogIn
    else
      React.createElement LoginForm, performLogIn: @performLogIn