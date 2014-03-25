class EventsController < ApplicationController
  def index
    @events = Event.all
    @rss = FeedEntry.get_feed.entries
  end

  def create
    @attending_event = Event.find params[:event_id]
    @current_user.events << @attending_event
    redirect_to events_path
   
  end

  def new
    
  end

  def edit
  end

  def show   

    
  end

  def update
  end

  def destroy
  end
end
