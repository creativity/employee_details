class EducationDetail < ActiveRecord::Base
  attr_accessible :degree, :institute, :percenrtage, :university, :user_id, :year_of_passing,:personal_info_id
  belongs_to :user
  belongs_to :personal_info
end
