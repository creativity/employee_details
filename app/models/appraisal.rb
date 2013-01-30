class Appraisal < ActiveRecord::Base
  attr_accessible :date_of_joining, :description, :total_period_worked, :user_id
  belongs_to :user
end
