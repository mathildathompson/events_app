class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
        t.string :title
        t.text :description
        t.time :time
        t.date :date
        t.string :location
        t.integer :price
        t.string :contact
        t.timestamps
    end
  end
end
