class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

        t.string :name
        t.text :summary
        t.text :url
        t.timestamps       
       
     
        
    end
  end
end

