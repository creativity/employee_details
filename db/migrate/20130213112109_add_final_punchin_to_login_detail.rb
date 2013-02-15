class AddFinalPunchinToLoginDetail < ActiveRecord::Migration
  def change
    add_column :login_details, :final_punchin, :datetime
  end
end
