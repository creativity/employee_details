class Team < ActiveRecord::Base
  attr_accessible :number_of_persons, :team_leader, :team_name
end
