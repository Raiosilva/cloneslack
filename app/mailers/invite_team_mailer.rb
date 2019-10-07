class InviteTeamMailer < ApplicationMailer

  def invite_team(invite)
    @invite = invite
    mail to: @invite.email, subject: "Invitation to team #{@invite.team.slug}"
  end
  
end
