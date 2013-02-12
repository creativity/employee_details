class LeaveRequestsController < ApplicationController

  def index
    @leave_requests = LeaveRequest.all
  end

  def new
    @leave_request = LeaveRequest.new
  end

  def show
    @leave_request  = LeaveRequest.find(params[:id])
  end

  def edit
    @leave_request  = LeaveRequest.find(params[:id])
  end

  def create
    @leave_request = LeaveRequest.new(params[:leave_request])
    respond_to do |format|
      if @leave_request.save
        format.html { redirect_to @leave_request, notice: 'Leave Request was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @leave_request = LeaveRequest.find(params[:id])
    respond_to do |format|
      if @leave_request.update_attributes(params[:leave_request])
        format.html { redirect_to @leave_request, notice: 'Leave Request was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def users
    if params[:term]
      p params[:term]
      like= "%".concat(params[:term].concat("%"))
      users = User.where("username like ?", like)
    else
      users = User.all
    end
    list = users.map {|u| Hash[ id: u.id, label: u.username, name: u.username]}
    render json: list
  end

end
