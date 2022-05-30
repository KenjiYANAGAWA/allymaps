class AddAccommodationToPlace < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :accommodation, :boolean, default: false
  end
end
