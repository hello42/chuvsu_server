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
#  coord      :string(255)
#

class Address < ActiveRecord::Base
  after_create :addCoord

  def addCoord
    self.coord ||= Geo.get_coord_by_adress address
    save
  end


  def self.rebuild_coord
    Address.find_each do |item|
      item.coord = Geo.get_coord_by_adress( item.address )
      item.save
    end
  end
end
