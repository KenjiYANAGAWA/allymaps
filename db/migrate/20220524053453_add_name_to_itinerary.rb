class AddNameToItinerary < ActiveRecord::Migration[6.1]
  def change
    add_column :itineraries, :name, :string
  end
end
