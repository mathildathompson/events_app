# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  time        :time
#  date        :date
#  location    :string(255)
#  price       :integer
#  contact     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Event < ActiveRecord::Base
  attr_accessible :title, :description, :time, :date, :location, :price, :contact
  has_and_belongs_to_many :users


end
