class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :project_expected_duration
      t.string :client_name
      t.string :technology_used

      t.timestamps
    end
  end
end
