# == Schema Information
#
# Table name: organisations
#
#  id         :integer          not null, primary key
#  typeof     :string(255)
#  name       :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Organisation < ActiveRecord::Base
end
