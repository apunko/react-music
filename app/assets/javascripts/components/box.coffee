@Box = React.createClass
  getInitialState: ->
    logged_in: @props.loggingStatus

  performLogOperation: (loggidIn) ->
    alert "performLogOperation"
    @setState logged_in: loggidIn

  render: ->
    if @state.logged_in
      React.createElement MusicBox, singOut: @performLogOperation
    else
      React.createElement LoginForm, handleLogedIn: @performLogOperation