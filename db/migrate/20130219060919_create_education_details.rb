class CreateEducationDetails < ActiveRecord::Migration
  def change
    create_table :education_details do |t|
      t.string :degree
      t.string :institute
      t.string :university
      t.float :percenrtage
      t.date :year_of_passing
      t.integer :user_id

      t.timestamps
    end
  end
end
