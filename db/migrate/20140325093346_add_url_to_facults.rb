class AddUrlToFacults < ActiveRecord::Migration
  def change
    add_column :facults, :url, :string
  end
end
