class Rsvp < ActiveRecord::Base
  attr_accessible :user_id, :event_id, :attending
  belongs_to :user
  belongs_to :event


end


