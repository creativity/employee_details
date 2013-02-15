class LoginDetail < ActiveRecord::Base
  attr_accessible :user_id, :punch_in, :punch_out,  :status,:final_punchin,:loghrs
  # Associations ------------------------------------------------------------------------
  belongs_to  :user

after_create :final_punch_in

	def final_punch_in
	    @userdetail = LoginDetail.find_by_user_id(user_id)   
	    if @userdetail.punch_out.nil?
	       LoginDetail.update(@userdetail.id,:final_punchin=>Time.now)
	    end 	
	end
    
end
