# == Schema Information
#
# Table name: phones
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  number     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Phone < ActiveRecord::Base
end