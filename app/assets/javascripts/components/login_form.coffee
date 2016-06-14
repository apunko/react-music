@LoginForm = React.createClass
  getInitialState: ->
    login: ''
    password: ''

  handleSubmit: (e) ->
    e.preventDefault()
    $.ajax
      method: 'POST'
      url: '/sing_in'
      data: { user_inf: @state }
      dataType: 'JSON'
      success: (data) =>
        @props.performLogIn true
      error: (data) =>
        alert "Sorry error occurred while log in, please try again"

  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value

  render: ->
    React.DOM.form
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'row'
        React.DOM.h4
          className: 'text-center'
          'Log in to see more features!'
        React.DOM.label
          'Login'
        React.DOM.input
          type: 'text'
          placeholder: 'Login'
          name: 'login'
          value: @state.login
          onChange: @handleChange
        React.DOM.label
          'Password'
        React.DOM.input
          type: 'password'
          placeholder: 'Password'
          name: 'password'
          value: @state.password
          onChange: @handleChange
        React.DOM.p
          React.DOM.button
            className: "button expanded"
            type: 'submit'
            'Log in'