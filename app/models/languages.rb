class Languages < ActiveRecord::Base
  attr_accessible :language_name
  has_many :userlanguages
  has_many :users,:through=>:userlanguages
  has_many :personal_infos,:through=>:userlanguages
end
