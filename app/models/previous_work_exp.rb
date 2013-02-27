class PreviousWorkExp < ActiveRecord::Base
  attr_accessible :department, :designation, :duration, :organisation, :reason_to_leave,:user_id,:personal_info_id
  belongs_to :user
  belongs_to :personal_info
end
