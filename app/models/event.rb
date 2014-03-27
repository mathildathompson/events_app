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

require 'open-uri'

class Event < ActiveRecord::Base
  attr_accessible :name, :summary, :url
  has_many :rsvps
  has_many :users, :through => :rsvps

  # def self.get_feed   
  
  # #if using nokogiri:

    doc = Nokogiri::HTML(open("http://www.sydneytalks.com.au/talks_this_month/25.html").read)
    @title = doc.at('td.ev_td_title').inner_text
    @summary = doc.at('td.ev_td_content').inner_text
    # @time = doc.at('span.ev_td_detail_field').inner_text
    # @price = doc.at('span.ev_td_detail_field').inner_text
    # @date = doc.at ('td.ev_td_date').inner_text

    Event.create!(
              :name         => @title,
              :summary      => @summary                             
    )

  #  end 
    #if using feedjira

        # feed = Feedjira::Feed.fetch_and_parse('http://www.sydneytalks.com.au/index2.php?option=com_rss&no_html=1')
        # updated_feed = Feedjira::Feed.update(feed)
        # if updated_feed.updated?       
        #   feed.entries.each do |entry|

        #     Event.create!(
        #       :name         => entry.title,
        #       :summary      => entry.summary,
        #       :url          => entry.url,                
        #     )
        #   end
        # end
 

end


