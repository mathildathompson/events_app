# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_many :events
end
