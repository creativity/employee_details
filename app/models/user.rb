class User < ActiveRecord::Base

	# associations----------------------------------------------------------------------------------------
	belongs_to  :role
  has_many :team_users
  has_many :teams, :through=>:team_users 
  has_many :addresses
  has_many :attendances
  has_one :appraisal
  has_many  :login_details
  has_many  :leave_requests

  has_many :userlanguages
  has_many :languages,:through=>:userlanguages

  has_one :personal_info
  has_many :family_details
  has_many :education_details
  has_many :certificate_informations
  has_many :previous_work_exps
  has_one :professioanl_achivment
  has_many :proffesional_refs
  has_one :additional_info 


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
  # To set default user role
  def create_user_role
    if self.role.blank?
      id = Role.select{|role| role.role_type == $roles[:user]}.map(&:id)
      self.update_attributes(:role_id => id[0])
    end
  end

  # Getter
  def full_name
    [first_name, last_name].join(' ')
  end

  # Setter
  def full_name=(name)
    split = name.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end

end
