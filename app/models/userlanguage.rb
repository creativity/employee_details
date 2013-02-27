class Userlanguage < ActiveRecord::Base
  attr_accessible :language_id, :user_id,:personal_info_id
  belongs_to :user
  belongs_to :language
  belongs_to :personal_info
end
