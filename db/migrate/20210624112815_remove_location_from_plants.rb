class RemoveLocationFromPlants < ActiveRecord::Migration[6.0]
  def change
    remove_column :plants, :location
  end
end
