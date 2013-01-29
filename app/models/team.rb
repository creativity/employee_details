class Team < ActiveRecord::Base
  attr_accessible :number_of_persons, :team_leader, :team_name
  has_many :team_users
  has_many :users, :through=>:team_users

end
