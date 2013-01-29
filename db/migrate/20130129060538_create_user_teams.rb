class CreateUserTeams < ActiveRecord::Migration
  def change
    create_table :user_teams do |t|
      t.string :team_name

      t.timestamps
    end
  end
end
