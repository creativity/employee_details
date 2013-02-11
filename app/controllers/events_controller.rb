class EventsController < ApplicationController

  def index
    @events = Event.scoped
    @events = Event.between(params['start'], params['end']) if (params['start'] && params['end'])
    respond_to do |format|
      format.html
      format.json { render :json => @events }
    end
  end

  def new
    @event = Event.new
  end

  def show
    @event  = Event.find(params[:id])
  end

  def edit
    @event  = Event.find(params[:id])
  end

  def create
    @event = Event.new(params[:event])
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @event = Event.find(params[:id])
    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

end
