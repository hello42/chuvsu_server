class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
