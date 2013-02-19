class FamilyDetail < ActiveRecord::Base
  attr_accessible :age, :contact_info, :name, :occupation, :relationship, :user_id
end
