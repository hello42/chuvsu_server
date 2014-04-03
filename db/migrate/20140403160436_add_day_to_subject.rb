class AddDayToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :day, :integer
  end
end
