class FamilyDetail < ActiveRecord::Base
  attr_accessible :age, :contact_info, :name, :occupation, :relationship, :user_id,:personal_info_id
  belongs_to :user
  belongs_to :personal_info
end
