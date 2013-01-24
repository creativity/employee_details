class HomeController < ApplicationController
	before_filter :user_role ,:except=>"index"
  def index

  end
end
