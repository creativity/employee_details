class PreviousWorkExp < ActiveRecord::Base
  attr_accessible :department, :designation, :duration, :organisation, :reason_to_leave,:user_id
  belongs_to :user
end
