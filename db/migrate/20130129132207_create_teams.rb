class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :team_leader
      t.integer :number_of_persons

      t.timestamps
    end
  end
end
