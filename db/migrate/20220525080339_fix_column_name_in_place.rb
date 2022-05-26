class FixColumnNameInPlace < ActiveRecord::Migration[6.1]
  def change
    change_table :places do |t|
      t.rename :accessible_toilet, :toilet
      t.rename :priority_parking, :parking
    end
  end
end
