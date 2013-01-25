class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  #before_filter :user_role 
  def user_role
     @user = User.find_by_id(current_user.id)
     @role = @user.roles
     if @role[0].role_type=="Admin" || @role[0].role_type=="Super User" 
       respond_to do |formate|
          formate.html{redirect_to :action=>"admin_index",:controller=>"home" }
        end 
     else
        respond_to do |formate|
          formate.html{redirect_to :action=>"index",:controller=>"home" ,:notice=>"You are not authorised to access this page."}
        end	
     end	
  end
end
