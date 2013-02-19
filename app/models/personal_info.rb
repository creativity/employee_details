class PersonalInfo < ActiveRecord::Base
  attr_accessible :blood_group, :date_of_birth, :date_of_issue, :gender, :hobbies, :mobile_no, :passport_no, :permanant_address, :place_of_birth, :place_of_issue, :preffer_name, :present_address, :residance_no, :valid_till
end
