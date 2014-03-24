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
  attr_accessible :first_name, :last_name, :password, :password_confirmation
  has_and_belongs_to_many :events
  has_secure_password
end
