class SendMailJob < ApplicationJob
  queue_as :default

  def initialize(invite)
    @invite = invite
  end

  def perform
    TeamInviteMailer.invitation(@invite).deliver_later
  end
end