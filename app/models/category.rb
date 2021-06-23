class Category < ApplicationRecord
  has_many :pets, through: :pet_categories
  NAMES = %w[Food Vet Walks Baths]
  NAMES_FILTER = NAMES.map do |name|
                        [name.capitalize, name]
                      end

  validates :name, inclusion: { in: NAMES }
end
