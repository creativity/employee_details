class Task < ActiveRecord::Base
  attr_accessible :end_date, :start_date, :task_description, :task_name, :user_id
end
