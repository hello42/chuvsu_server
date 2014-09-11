# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  address    :string(255)
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  coord      :string(255)
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
