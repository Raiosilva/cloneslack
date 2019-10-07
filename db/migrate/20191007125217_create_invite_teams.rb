class CreateInviteTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :invite_teams do |t|

      t.timestamps
    end
  end
end
