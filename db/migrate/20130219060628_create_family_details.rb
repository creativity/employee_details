class CreateFamilyDetails < ActiveRecord::Migration
  def change
    create_table :family_details do |t|
      t.string :name
      t.string :relationship
      t.string :occupation
      t.string :contact_info
      t.string :age
      t.integer :user_id

      t.timestamps
    end
  end
end
