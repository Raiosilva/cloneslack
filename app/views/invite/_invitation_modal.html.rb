<div class="modal" id="invitation_modal">
  <div class="modal-content">
    <div class="row">
      <%= form_tag('invite_teams', method: :post, class: 'col s12 invitation_form') do %>
        <div class="col s12">
          <h4>User Invitation</h4>
          <p>Please inform the user e-mail that you want to invite to the team</p>
        </div>
        <div class="input-field col s12">
          <%= text_field(:team_user, :email) %>
          <%= label_tag(:email, 'User e-mail') %>
          <%= submit_tag('Invite', class: 'btn right') %>
        </div>
      <% end %>
    </div>

  </div>
</div>