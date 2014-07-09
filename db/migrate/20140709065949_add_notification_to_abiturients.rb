class AddNotificationToAbiturients < ActiveRecord::Migration
  def change
    add_column :abiturients, :notification, :boolean
  end
end
