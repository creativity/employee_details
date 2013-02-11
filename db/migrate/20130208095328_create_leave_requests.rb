class CreateLeaveRequests < ActiveRecord::Migration
  def change
    create_table :leave_requests do |t|
      t.integer :user_id
      t.date :leave_date
      t.integer :leave_type_id
      t.text :remark
      t.timestamps
    end
  end
end
