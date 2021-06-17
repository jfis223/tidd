class CreatePetNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_notifications do |t|
      t.datetime :start_date
      t.string :frequency
      t.references :pet_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
