class ProfessionallRef < ActiveRecord::Base
  attr_accessible :contact_no, :department, :designation, :name, :organisation, :user_id,:personal_info_id
  belongs_to :user
  belongs_to :personal_info
end
