class Category < ApplicationRecord
  has_many :pets, through: :pet_categories
  NAMES = %w[food vet walks bath]
  NAMES_FILTER = NAMES.map do |name|
                        [name.capitalize, name]
                      end

  validates :name, inclusion: { in: NAMES }
end
