class LeaveRequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :leave_type
  attr_accessible :leave_date, :remark, :user_id, :leave_type_id
  attr_accessor :user_name

  def user_name=(name)
    user = User.find_by_first_name(name)
    if user
      self.user_id = user.id
    else
      errors[:user_name] << "Invalid name entered"
    end
  end

  def user_name
    User.find(user_id).name if user_id
  end

end


