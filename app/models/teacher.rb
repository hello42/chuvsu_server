# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  info       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Teacher < ActiveRecord::Base
  has_many :subjects
end
