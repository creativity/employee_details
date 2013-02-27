class CertificateInformation < ActiveRecord::Base
  attr_accessible :course, :duration, :grade, :institute, :user_id, :year,:personal_info_id
  belongs_to :user
  belongs_to :personal_info
end
