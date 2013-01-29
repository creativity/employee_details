class HomeController < ApplicationController
	

  def index

     @role = current_user.role
     if @role.role_type =="Admin" or  @role.role_type =="Super User"
       redirect_to home_admin_index_path
    end		
  
  end

  def admin_index
  end
  	
end
