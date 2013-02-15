class AddLoghrsToLoginDetail < ActiveRecord::Migration
  def change
    add_column :login_details, :loghrs, :string
  end
end
