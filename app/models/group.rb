# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  facult_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Group < ActiveRecord::Base
  has_many :subjects
end
