class CreateAppraisals < ActiveRecord::Migration
  def change
    create_table :appraisals do |t|
      t.integer :user_id
      t.datetime :date_of_joining
      t.string :total_period_worked
      t.text :description

      t.timestamps
    end
  end
end
