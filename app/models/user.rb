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


  def attending
   
   self.mixtapes.select do |mixtape|
      # Get all the artist names for all the songs in a mixtape and see if Rachel's occurs.
      mixtape.songs.map(&:artist).map(&:name).include? "Rachel's"
    end
  end

  def not_rachels_mixtapes
    # Subtract the Rachel's mixtapes from all the user's mixtapes.
    self.mixtapes - self.rachels_mixtapes
  end

end
