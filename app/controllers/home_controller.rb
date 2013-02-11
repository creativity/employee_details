class HomeController < ApplicationController

  def index
    @role = current_user.role
    if @role.role_type =="admin"
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

  def user_punch_in
    @login_detail = LoginDetail.new
    @login_detail.user_id = current_user.id
    @login_detail.punch_in = Time.now
    @login_detail.status = params[:status]
     respond_to do |format|
      if @login_detail.save
        format.html
        format.js
      end
    end
  end

  def user_punch_out
    p params
    @login_detail = LoginDetail.find_by_user_id(current_user.id)
    @login_detail.update_attributes(:punch_out => Time.now, :status => false)
    p @login_detail
    p 'hgurdtghr ruhtgiurhtg rith rhtgurt'
    respond_to do |format|
      format.html
      format.js
    end
  end

end # Controller ends
