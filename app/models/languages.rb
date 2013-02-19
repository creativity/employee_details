class Languages < ActiveRecord::Base
  attr_accessible :language_name
  has_many :userlanguages
  has_many :users,:through=>:userlanguages
end
