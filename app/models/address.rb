class Address < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :country, :state
end
