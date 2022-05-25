class AddFeaturesToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :accessible_toilet, :integer
    add_column :places, :entrance, :integer
    add_column :places, :elevator, :integer
    add_column :places, :priority_parking, :integer
    add_column :places, :charging, :integer
  end
end
