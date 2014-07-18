class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :title
      t.string :address
      t.string :image

      t.timestamps
    end
  end
end
