class CreateFacults < ActiveRecord::Migration
  def change
    create_table :facults do |t|
      t.string :name
      t.string :logo
      t.text :info

      t.timestamps
    end
  end
end
