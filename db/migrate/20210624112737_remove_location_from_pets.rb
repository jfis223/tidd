class RemoveLocationFromPets < ActiveRecord::Migration[6.0]
  def change
    remove_column :pets, :location
  end
end
