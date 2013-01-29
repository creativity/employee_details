class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :user_id
      t.datetime :day
      t.time :login_time
      t.integer :weekly_hours
      t.time :logout_time
      t.integer :monthly_hours

      t.timestamps
    end
  end
end
