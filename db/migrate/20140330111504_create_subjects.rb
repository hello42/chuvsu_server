class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :number
      t.integer :star
      t.integer :teacher_id
      t.string :info

      t.timestamps
    end
  end
end
