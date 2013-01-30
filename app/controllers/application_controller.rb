class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  def user_role
     @user = User.find_by_id(current_user.id)
     @role = @user.roles
     if @role[0].role_type=="Admin" || @role[0].role_type=="Super User" 
       return true
     else
        respond_to do |format|
          format.html{redirect_to home_index_url,flash[:notice]="This message will persist"}
        end
     end	
  end
end
