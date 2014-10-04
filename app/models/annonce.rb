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
#  image        :string(255)
#

class Annonce < ActiveRecord::Base
  mount_uploader :image, AnonsImageUploader


  def self.get_in_future
    #fix_me return все будущие
    all
  end

end
