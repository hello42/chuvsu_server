# == Schema Information
#
# Table name: subjects
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  number     :integer
#  star       :integer
#  teacher_id :integer
#  info       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  day        :integer
#  group_id   :integer
#

require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
