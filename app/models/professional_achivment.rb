class ProfessionalAchivment < ActiveRecord::Base
  attr_accessible :description, :user_id,:personal_info_id
  belongs_to :user
  belongs_to :personal_info
end
