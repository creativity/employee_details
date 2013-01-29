class HomeController < ApplicationController
	

  def index

     @role = current_user.roles
     if @role[0].role_type=="Admin" || @role[0].role_type=="Super User" 
       redirect_to home_admin_index_path
    end		
  
  end

  def admin_index
  end
  	
end
