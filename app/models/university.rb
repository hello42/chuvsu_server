# == Schema Information
#
# Table name: universities
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class University < ActiveRecord::Base
end
