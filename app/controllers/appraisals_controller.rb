class AppraisalsController < ApplicationController

  def new
    @appraisal = Appraisal.new
  end

  def show
    @appraisal  = Appraisal.find(params[:id])
  end

  def edit
    @appraisal  = Appraisal.find(params[:id])
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

  def update
    @appraisal = Appraisal.find(params[:id])
    respond_to do |format|
      if @appraisal.update_attributes(params[:appraisal])
        format.html { redirect_to @appraisal, notice: 'Leave was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
end
