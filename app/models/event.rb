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
#  time       :string(255)
#  price      :string(255)
#  date       :string(255)
#

require 'open-uri'

class Event < ActiveRecord::Base
  attr_accessible :name, :summary, :date, :detail
  has_many :rsvps
  has_many :users, :through => :rsvps
  validates :name, :presence => :true, :uniqueness => true #Add validation, an event will not be saved to the database if it does not have a name; 
                                                           #Cannot save an event with the same name to the database; 

 #if using nokogiri:
  def self.get_feed(num)
    if num == 1
      doc = Nokogiri::HTML(open("http://www.sydneytalks.com.au/talks_this_month/25.html").read)
      titles = doc.css('td.ev_td_title')
      summaries = doc.css('td.ev_td_content')
      details = doc.css('td.ev_td_details')
      dates = doc.css('td.ev_td_date')
      number = 10

      0.upto(number - 1) do |x|
        #Change the instance varibales to local variables;
        #When you loop through will not save the previous value from loop before in instance varibale;
        title = titles[x].css('b').text if titles[x]
        # these lines verify if there's still something in the array before they iterate
        summary = summaries[x].inner_text if summaries[x]
        date = dates[x].inner_text if dates[x]
        detail = details[x].inner_text if details[x]
        #Take away the ! here, if event does not have name it will not save to the database, but will not throw us an error;   
        Event.create(
          :name => title,
          :summary => summary,
          :date => date,
          :detail => detail
        )  

        end
      end
  end
end
   
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
 




