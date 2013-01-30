class AppraisalController < ApplicationController
  def index
    if params[:id]
  	  @appraisals=Appraisal.find_all_by_user_id(params[:id])
    end
  end
end
