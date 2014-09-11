# == Schema Information
#
# Table name: annonces
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  date         :datetime
#  body         :text
#  notification :boolean
#  created_at   :datetime
#  updated_at   :datetime
#

class Annonce < ActiveRecord::Base
end
