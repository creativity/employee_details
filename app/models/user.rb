class User < ActiveRecord::Base

	# associations----------------------------------------------------------------------------------------
	belongs_to  :role
  has_many :team_users
  has_many :teams, :through=>:team_users 
  has_many :addresses
  has_many :attendances

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:role,:status,:username,:first_name,:last_name,:middle_name

  # methods -----------------------------------------------------------------------------------------------

  def is_admin?
    unless self.role.blank?
      return false if self.role.role_type == $roles[:admin]
      return true
    else
      false
    end
  end


end
