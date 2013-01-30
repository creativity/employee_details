class Attendance < ActiveRecord::Base
  attr_accessible :day, :login_time, :logout_time, :monthly_hours, :user_id, :weekly_hours
  belongs_to :user
end
