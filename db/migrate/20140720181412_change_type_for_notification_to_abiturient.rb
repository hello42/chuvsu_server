class ChangeTypeForNotificationToAbiturient < ActiveRecord::Migration
  def change
    remove_column :abiturients, :notification, :boolean
    add_column :abiturients, :notification, :integer

  end
end
