# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  summary    :text
#  url        :text
#  created_at :datetime
#  updated_at :datetime
#

 

class Event < ActiveRecord::Base
  attr_accessible :name, :summary, :url
  has_and_belongs_to_many :users

  def self.get_feed    
    feed = Feedjira::Feed.fetch_and_parse('http://www.sydneytalks.com.au/index2.php?option=com_rss&no_html=1')
    updated_feed = Feedjira::Feed.update(feed)
    if updated_feed.updated?       
      feed.entries.each do |entry|

        Event.create!(
          :name         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,                
        )
      end
    end
  end
end


