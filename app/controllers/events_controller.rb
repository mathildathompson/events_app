class EventsController < ApplicationController
  def index
    #We don't want to ping the Sydney Talks rss to often, so this function returns runs the get_feed method
    #randomly 1 times in 20. This should be enough as the feed is not updated regularly. 
    x = rand(1..20)
    @rss = Event.get_feed if x == 1
    @rss = Event.all
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
