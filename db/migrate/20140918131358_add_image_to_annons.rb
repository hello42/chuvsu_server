class AddImageToAnnons < ActiveRecord::Migration
  def change
    add_column :annonces, :image, :string
  end
end
