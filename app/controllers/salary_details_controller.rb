class SalaryDetailsController < ApplicationController
  # GET /salary_details
  # GET /salary_details.json
  def index
    @salary_details = SalaryDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @salary_details }
    end
  end

  # GET /salary_details/1
  # GET /salary_details/1.json
  def show
    @salary_detail = SalaryDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @salary_detail }
    end
  end

  # GET /salary_details/new
  # GET /salary_details/new.json
  def new
    @salary_detail = SalaryDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @salary_detail }
    end
  end

  # GET /salary_details/1/edit
  def edit
    @salary_detail = SalaryDetail.find(params[:id])
  end

  # POST /salary_details
  # POST /salary_details.json
  def create
    @salary_detail = SalaryDetail.new(params[:salary_detail])

    respond_to do |format|
      if @salary_detail.save
        format.html { redirect_to @salary_detail, notice: 'Salary detail was successfully created.' }
        format.json { render json: @salary_detail, status: :created, location: @salary_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @salary_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /salary_details/1
  # PUT /salary_details/1.json
  def update
    @salary_detail = SalaryDetail.find(params[:id])

    respond_to do |format|
      if @salary_detail.update_attributes(params[:salary_detail])
        format.html { redirect_to @salary_detail, notice: 'Salary detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @salary_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salary_details/1
  # DELETE /salary_details/1.json
  def destroy
    @salary_detail = SalaryDetail.find(params[:id])
    @salary_detail.destroy

    respond_to do |format|
      format.html { redirect_to salary_details_url }
      format.json { head :no_content }
    end
  end
end
