# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  typeof     :string(255)
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Student < ActiveRecord::Base
end
