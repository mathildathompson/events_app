class EventsUsers < ActiveRecord::Migration
  def change
    create_table :events_users, :id => false do |t|
      t.integer :events_id
      t.integer :users_id
    end
  end
end
