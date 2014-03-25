class CreateFeedEntry < ActiveRecord::Migration
  def change
    create_table :feed_entries do |t|

        t.string :name
        t.text :summary
        t.text :url
        t.time :published_at        
        t.integer :guid 
     
        
    end
  end
end
