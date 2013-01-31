class ChangeDatatypeForDateOfJoining < ActiveRecord::Migration
  def up
    change_column :appraisals, :date_of_joining, :date
  end

  def down
    change_column :appraisals, :date_of_joining, :datetime
  end
end
