# == Schema Information
#
# Table name: abiturients
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  body         :text
#  img          :string(255)
#  url          :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  notification :integer
#

require 'test_helper'

class AbiturientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
