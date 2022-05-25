class RemoveWheelchairAccessibilityFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :wheelchair_accessibility, :integer
  end
end
