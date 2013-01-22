class Message < ActiveRecord::Base
  attr_accessible :message, :message_from, :message_to, :subject
end
