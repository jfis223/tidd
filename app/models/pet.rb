class Pet < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :pet_categories
  has_many :pet_notifications, through: :pet_categories
  SPECIES = %w[cat dog]
  SPECIES_FILTER = SPECIES.map do |species|
                        [species.capitalize, species]
                      end
  validates :name, presence: true
  validates :breed, presence: true
  validates :species, inclusion: { in: SPECIES }
  validates :birthdate, presence: true
  has_one_attached :image
end
