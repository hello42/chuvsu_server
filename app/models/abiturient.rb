# == Schema Information
#
# Table name: abiturients
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  img        :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Abiturient < ActiveRecord::Base
end
