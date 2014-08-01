class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :typeof
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
