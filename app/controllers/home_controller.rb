class HomeController < ApplicationController

  def index
     @role = current_user.role
     if @role.role_type =="Admin"
       redirect_to home_admin_index_path
    end		
  end

  def admin_index
  end
  	
end
