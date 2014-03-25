# == Schema Information
#
# Table name: feed_entries
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  summary      :text
#  url          :text
#  date         :date
#  published_at :time
#  guid         :integer
#

class FeedEntry < ActiveRecord::Base
  attr_accessible :name, :summary, :url, :published_at, :guid

  def self.get_feed
    feed = Feedjira::Feed.fetch_and_parse('http://www.sydneytalks.com.au/index2.php?option=com_rss&no_html=1')
    feed.entries.each do |entry|

        FeedEntry.create!(
          :name         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id
        )
      
    end
  end
end


