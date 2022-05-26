class AddCategoryToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :category, :string
  end
end
