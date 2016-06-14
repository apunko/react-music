@NextButton = React.createClass
  handleDelete: (e) ->
    #e.preventDefault()
    alert "clicked!"
    @props.handleClicked "value"
# yeah... jQuery doesn't have a $.delete shortcut method
    ###$.ajax
      method: 'DELETE'
      url: "/records/#{ @props.record.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteRecord @props.record
  ###
  render: ->
    React.DOM.a
      onClick: @handleDelete
      'Next'