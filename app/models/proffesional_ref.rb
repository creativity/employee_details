class ProffesionalRef < ActiveRecord::Base
  attr_accessible :contact_no, :department, :designation, :name, :organisation, :user_id
  belongs_to :user
end
