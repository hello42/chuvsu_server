class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :facult_id
      t.string :info

      t.timestamps
    end
  end
end
