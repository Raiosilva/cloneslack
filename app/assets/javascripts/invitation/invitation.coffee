$(document).on 'turbolinks:load', ->
  $('.add_user').on 'click', (e) ->
    $('#invitation_modal').modal('open')
    return false

  $('.invitation_form').on 'submit', (e) ->
    $.ajax e.target.action,
      type: 'POST',
      dataType: 'json',
      data: {
        team_user: {
          team_id: $('.team_id').val(),
          email: $('#team_user_email').val()
        }
      },
      success: (data, text, jqXHR) ->
        if data
          M.toast({ html:'Invitation was send with success &nbsp;<strong>:)</strong>', displayLength: 4000, classes: 'green' })
        else
          M.toast({ html:'The user already is a member of this team, invitation was not sendend &nbsp;<strong>:)</strong>', displayLength: 4000, classes: 'green' })
      error: (jqXHR, textStatus, errorThrown) ->
        M.toast({ html: 'Problem to send the invitation &nbsp;<strong>:(</strong>', displayLength: 4000, classes: 'red' })
    
    $('#invitation_modal').modal('close')
    return false
