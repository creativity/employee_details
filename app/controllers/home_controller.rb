class HomeController < ApplicationController

  def index
     @role = current_user.role
     if @role.role_type =="Admin" 
       redirect_to home_admin_index_path
    end		
  end

  def admin_index
  end
  	
  # This method is for admin to list all users.
  def user_list
    @user=User.all
  end  

  # This method is for admin to change status of user profile.
  def status
   if params[:deactivate_id]
     User.update(params[:deactivate_id],:status=>"Deactive")
    @user=User.all
     render :update do |page|
       page.replace_html 'userlist', :partial => 'home/status_change', :object=>@user, :layout => false
      end
    else
      User.update(params[:activate_id],:status=>"Active")
       @user=User.all
       render :update do |page|
        page.replace_html 'userlist', :partial => 'home/status_change', :object=>@user, :layout => false
       end
    end
  end


  # This method is for fetching list of all users applied for appraisals.

  def list_appraisal
       @lsitofuser=Appraisal.group(:user_id)
  end  




end # Controller ends
