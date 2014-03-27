# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  admin           :boolean          default(FALSE)
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :admin, :password, :password_confirmation
  has_many :rsvps
  has_many :events, :through => :rsvps
  has_secure_password

 #here we are trying to get all the events the user is attending. so we want to go through the rsvp array. and say, 
 #get me all the events where user id = current_user.id and then find all the events where attending = t. 
 
 def attending
    self.rsvps.select { |rsvp| rsvp.attending == true }
 end

 def not_attending
    self.rsvps - self.attending
 end

end


