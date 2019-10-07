class InviteTeam < ApplicationRecord
  belongs_to :user
  belongs_to :team

  validates :team, :email, presence: true

  validates :email, presence: true,
            format: { with: URI::MailTo::EMAIL_REGEXP }
end
