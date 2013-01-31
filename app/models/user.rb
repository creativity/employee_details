class User < ActiveRecord::Base

	# associations----------------------------------------------------------------------------------------
	belongs_to  :role
  has_many :team_users
  has_many :teams, :through=>:team_users 
  has_many :addresses
  has_many :attendances
  has_one :appraisal
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :status, :username, :role, :role_id, :first_name, :last_name

  # callbacks -----------------------------------------------------------------------------------------------
  after_create  :create_user_role

  # methods -----------------------------------------------------------------------------------------------

  def is_admin?
    unless self.role.blank?
      return false unless self.role.role_type == $roles[:admin]
      return true
    else
      false
    end
  end

  def create_user_role
    if self.role.blank?
      id = Role.select{|role| role.role_type == $roles[:user]}.map(&:id)
      self.update_attributes(:role_id => id[0])
    end
  end

end
