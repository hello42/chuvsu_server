class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :typeof
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
