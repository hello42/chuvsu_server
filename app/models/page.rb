# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  typeof     :string(255)
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Page < ActiveRecord::Base
end
