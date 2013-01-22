class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.string :leave_name
      t.string :LeaveType
      t.integer :NoOfLeaves

      t.timestamps
    end
  end
end
