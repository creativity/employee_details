class SalariesController < ApplicationController

  def index
    @user = User.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    @date_counts = Time.days_in_month(@date.month, @date.year)
    @month_dates = 1.upto(@date_counts)
    @salaries = Salary.within_month(@date)
  end

  def show
    @salary = Salary.find(params[:id])
    @date = Date.new(@salary.target_year.to_i, @salary.target_month.to_i, 1)
    respond_to do |format|
      format.js
    end
  end

  def new
    @salary = Salary.new
  end

  def edit
    @salary  = Salary.find(params[:id])
  end

  def create
    @salary = Salary.new(params[:salary])
    respond_to do |format|
      if @salary.save
        format.html { redirect_to @salary, notice: 'Salary was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @salary = Salary.find(params[:id])
    respond_to do |format|
      if @salary.update_attributes(params[:salary])
        format.html { redirect_to @salary, notice: 'Salary was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
end
