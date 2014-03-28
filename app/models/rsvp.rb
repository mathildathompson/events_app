# == Schema Information
#
# Table name: rsvps
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  user_id    :integer
#  attending  :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Rsvp < ActiveRecord::Base
  attr_accessible :user_id, :event_id, :attending
  belongs_to :user
  belongs_to :event


end


