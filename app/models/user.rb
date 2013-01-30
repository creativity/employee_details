class User < ActiveRecord::Base

	# associations----------------------------------------------------------------------------------------
	belongs_to  :role
  has_many :team_users
  has_many :teams, :through=>:team_users 
  has_many :addresses

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :status,  :username,  :role_id
end
