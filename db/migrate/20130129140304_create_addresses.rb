class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :country
      t.string :state
      t.string :address1
      t.string :address2

      t.timestamps
    end
  end
end
