class LoginDetail < ActiveRecord::Base
  attr_accessible :user_id, :punch_in, :punch_out,  :status
  # Associations ------------------------------------------------------------------------
  belongs_to  :user
end
