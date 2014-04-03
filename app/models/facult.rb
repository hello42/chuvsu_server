# == Schema Information
#
# Table name: facults
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  logo       :string(255)
#  info       :text
#  created_at :datetime
#  updated_at :datetime
#  url        :string(255)
#

class Facult < ActiveRecord::Base
  has_many :groups
end
