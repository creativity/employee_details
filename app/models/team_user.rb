class TeamUser < ActiveRecord::Base
  attr_accessible :team_id, :user_id
end
