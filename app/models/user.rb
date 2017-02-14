# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  bio             :text
#  avatar          :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  admin           :boolean          default("false")
#

class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_secure_password
  validates :email, :presence => true, :uniqueness => true, :length => {:minimum => 7}
end
