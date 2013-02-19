class CertificateInformation < ActiveRecord::Base
  attr_accessible :course, :duration, :grade, :institute, :user_id, :year
  belongs_to :user
end
