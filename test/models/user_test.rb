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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
