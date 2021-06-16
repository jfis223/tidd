class CreatePetCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_categories do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
