class ChangeTypeForNotificationToAbiturient < ActiveRecord::Migration
  def change
   change_column :abiturients, :notification, :integer
  end
end
