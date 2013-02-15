class AddTimelogToLoginDetail < ActiveRecord::Migration
  def change
    add_column :login_details, :timelog, :string
  end
end
