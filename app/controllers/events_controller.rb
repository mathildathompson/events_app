class EventsController < ApplicationController

  def index
    #We don't want to ping the Sydney Talks rss to often, so this function returns runs the get_feed method
    #randomly 1 times in 20. This should be enough as the feed is not updated regularly. 
      Event.get_feed(rand(1..20))
      if @current_user.present?
        @rss = Event.all - @current_user.events
      else
        @rss = Event.all
      end


    end


  def create

    Rsvp.create(:event_id => params[:id], :user_id => @current_user.id, :attending => params[:attending])
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
