class AddAreaToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :area, :integer
  end
end
