class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def create
  end

  def new
    
  end

  def edit
  end

  def show   
    url = %w[http://musicfeeds.com.au/feeds/sydney-festival-2014/feed/]
    feed = Feedjira::Feed.fetch_and_parse url 
    @rss_event = feed.values.first.entries
  end

  def update
  end

  def destroy
  end
end
