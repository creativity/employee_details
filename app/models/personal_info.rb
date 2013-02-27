class PersonalInfo < ActiveRecord::Base
   attr_accessible :blood_group, :date_of_birth, :date_of_issue, :gender, :hobbies, :mobile_no, :passport_no, :permanant_address, :place_of_birth, :place_of_issue, :preffer_name, :present_address, :residance_no, :valid_till,:user_id,:family_details_attributes

  belongs_to :user


  has_many :userlanguages
  has_many :languages,:through=>:userlanguages

  has_one :personal_info
  has_many :family_details
  has_many :education_details
  has_many :certificate_informations
  has_many :previous_work_exps
  has_one :professional_achivment
  has_many :professional_refs
  has_one :additional_info 

 accepts_nested_attributes_for :family_details

end
