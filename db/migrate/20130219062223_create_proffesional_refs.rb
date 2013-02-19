class CreateProffesionalRefs < ActiveRecord::Migration
  def change
    create_table :proffesional_refs do |t|
      t.string :name
      t.string :contact_no
      t.string :organisation
      t.string :department
      t.string :designation
      t.integer :user_id

      t.timestamps
    end
  end
end
