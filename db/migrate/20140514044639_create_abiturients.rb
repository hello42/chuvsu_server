class CreateAbiturients < ActiveRecord::Migration
  def change
    create_table :abiturients do |t|
      t.string :title
      t.text :body
      t.string :img
      t.string :url

      t.timestamps
    end
  end
end
