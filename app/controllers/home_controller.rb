class HomeController < ApplicationController
	

  def index

     @role = current_user.roles
     if @role[0].role_type=="Admin" || @role[0].role_type=="Super User" 
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
         p ">>>>>>>>>>>>>>>"
         p @user
     render :update do |page|
       page.replace_html 'userlist', :partial => 'home/status_change', :object=>@user, :layout => false
      end  
    else
      User.update(params[:activate_id],:status=>"Active") 
         @user=User.all
         p ">>>>>>>>>>>>>>>>>"
         p @user
       render :update do |page|
        page.replace_html 'userlist', :partial => 'home/status_change', :object=>@user, :layout => false
       end 
    end 
  end 

end # Controller ends
