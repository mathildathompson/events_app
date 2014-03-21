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
     

    url = %w[http://www.sydneytalks.com.au/index2.php?option=com_rss&no_html=1&catid=16]
    feed = Feedjira::Feed.fetch_and_parse url 
    @rss_event = feed.values.first.entries
  end

  def update
  end

  def destroy
  end
end
