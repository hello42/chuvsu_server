class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.string :title
      t.datetime :date
      t.text :body
      t.boolean :notification

      t.timestamps
    end
  end
end
