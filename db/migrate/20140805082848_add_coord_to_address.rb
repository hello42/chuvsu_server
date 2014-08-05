class AddCoordToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :coord, :string
  end
end
