class AddUserIdToPreviousWorkExp < ActiveRecord::Migration
  def change
    add_column :previous_work_exps, :user_id, :integer
  end
end
