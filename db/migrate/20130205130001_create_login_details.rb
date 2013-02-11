class CreateLoginDetails < ActiveRecord::Migration
  def change
    create_table :login_details do |t|
      t.integer :user_id
      t.datetime  :punch_in
      t.datetime  :punch_out
      t.boolean :status
      t.timestamps
    end
  end
end
