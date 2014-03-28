##Event App Presentation

First project for GA WDI. 

Solves: Finding out which of your friends want to do the same things. 

Mainly built with:

* Nokogiri
* Jquery and CSS
* Bootstrap theme from Bootswatch
* Rails
* @edwardawkward =+ @mathildathompso

##Cool bits

The card feature

##Oh Lord, the Pain

Using Feedjira for RSS, and then switching to Nokogiri at 7pm last night. 
Trying to prevent users from seeing the same event, so re-structuring the db. 

### Wishlist

* update event list using cron job.  
* let users sign in with Google or FB

##History

###Friday 

* Add Twitter Bootstrap to the app: http://rvg.me/2013/11/using-bootstrap-3-with-rails-4/
* Parse RSS feed using Feedjira: http://feedjira.com/

###Monday
* Add basic JQuery for slide out effect when user presses yes or no. 
* adds icons from twitter bootstrap
* adds authentication so users can login

### Tuesday
* connect events with users using ```link_to + :remote => true``` to emulate AJAX.  
* get rss data in db and let users add these to their account

### Wednesday

* results page shows your events, and also your friends who are going. 
* add intellinav from joels example. 
* add validation to table so that users cannot enter same event twice. 
* add validation so that 'friend' appears only once 
* add tinder style card display
* add style with bootstrap theme

### Thursday

* convert relationships from HABTM to ```has_many => :through```
* add boolean to record result for every event a user sees, which prevents them from seeing same event twice. 
* change view for users/index so only users who also answered 'true' are displayed. 
* style results page using bootswatch panel


### Notes

* to add data to heroku app after db:drop, do heroku run rails c, then paste in

if using FeedJira:

```
feed = Feedjira::Feed.fetch_and_parse('http://www.sydneytalks.com.au/index2.php?option=com_rss&no_html=1')
feed.entries.each do |entry|

        Event.create!(
          :name         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,                
        )
      end
```
