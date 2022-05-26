class RemoveWheelchairAccessibilityFromPlaces < ActiveRecord::Migration[6.1]
  def change
    remove_column :places, :wheelchair_accessibility, :integer
  end
end
