class AddPositionToDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :destinations, :position, :integer
  end
end
