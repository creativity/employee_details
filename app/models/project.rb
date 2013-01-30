class Project < ActiveRecord::Base
  attr_accessible :client_name, :project_expected_duration, :project_name, :technology_used
end
