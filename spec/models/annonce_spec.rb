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

require 'rails_helper'

RSpec.describe Annonce, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
