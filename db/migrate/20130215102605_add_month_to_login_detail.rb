class AddMonthToLoginDetail < ActiveRecord::Migration
  def change
    add_column :login_details, :month, :string
  end
end
