class AddCityToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :city, :string
  end
end
