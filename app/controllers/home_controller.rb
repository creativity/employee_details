require 'time_diff'
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

  def user_punch_in

    # Here last record for loged in user fetched and then checked wether punch in is for today or not.

    @userlogin=LoginDetail.find(:last,:conditions=>["user_id=?",current_user.id]) 

    if !@userlogin.nil?

      # Here we check wether punch in request is for today or do we need to create new record of login details.
      
      if @userlogin.created_at.to_date==Time.now.to_date 
      
      else
        @login_detail = LoginDetail.new
        @login_detail.user_id = current_user.id
        @login_detail.punch_in = Time.now
        @login_detail.status = params[:status]   
      end 
    else
       @login_detail = LoginDetail.new
       @login_detail.user_id = current_user.id
       @login_detail.punch_in = Time.now
       @login_detail.status = params[:status]
    end

         respond_to do |format|
          if @login_detail.save
             @login_detail.update_attributes(:month=>@login_detail.created_at.strftime("%B"))
            format.html
            format.js
          end
        end

  end 



  def user_punch_out
    p params

    @login_detail = LoginDetail.find_last_by_user_id(current_user.id)
    

    @login_detail.update_attributes(:punch_out => Time.now, :status => false)

   # Here we are fetching time diff using time diff gem and updating loghrs with time duration.
     @diffintime = Time.diff(@login_detail.punch_in.to_s, @login_detail.punch_out.to_s, '%H %N %S')
     @diff = (Time.parse(@login_detail.punch_out.to_s) - Time.parse(@login_detail.punch_in.to_s))/3600
    
     @login_detail.update_attributes(:loghrs => @diff,:timelog=>@diffintime[:diff])
    
    respond_to do |format|
      format.html
      format.js
    end

  end # def punch out ends.


 # This def is to show dropdown for months.
 def monthly_timesheet
   
 end 


# This def is to show all log hours for a month selected by users along with total hrs loged.

 def monthly_time_detail
   @userslog = LoginDetail.find(:all,:conditions=>["user_id=? and month = ? ",current_user.id,params[:month] ])
 
  render :monthly_time_detail do |month|
    month.replace_html 'timesheet',:partial=>'home/month_time_detail',:object=>@monthlydetails,:layout=>false
  end  

 end 

  def employee_form_info

  end

  def newuser_sign_up

  end

  def create_user
    @user = User.new(:email => params[:email], :password => "hindavi123",:password_confirmation=>"hindavi123",:username=>params[:username],:first_name=>params[:first_name],:last_name=>params[:last_name])
    @user.save
    redirect_to home_user_list_path
  end





end # Controller ends
