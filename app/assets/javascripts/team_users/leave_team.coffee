$(document).on 'turbolinks:load', ->
  $('body').on 'click', 'a.leave_team', (e) ->
    $('#leave_team_modal').modal('open')
    $('.leave_team_form').attr('action', 'team_users/' + e.target.id)
    return false

  $('.leave_team_form').on 'submit', (e) ->
    $.ajax e.target.action,
      type: 'DELETE',
      dataType: 'json',
      data: { 
        team_id: $('.team_id').val() 
      },
      success: (data, text, jqXHR) ->
        $(location).attr('href', '/')
      error: (jqXHR, textStatus, errorThrown) ->
        $('#leave_team_modal').modal('close')
        M.toast({html: 'Problem on leave the team <strong>:(</strong>', displayLength: 4000, classes: 'red' })

    return false;
