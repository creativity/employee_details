class AppraisalsController < ApplicationController

  def new
    @appraisal = Appraisal.new
  end

  def create
    @appraisal = Appraisal.new(params[:appraisal])
    respond_to do |format|
      if @appraisal.save
        format.html { redirect_to @appraisal, notice: 'Appraisal was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
end
