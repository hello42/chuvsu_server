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
#

class Address < ActiveRecord::Base
end
