class Plant < ApplicationRecord
  belongs_to :user
  SPECIES = %w[Magnoliophyta Gnetophyta Pinophyta Ginkgophyta]
  SPECIES_FILTER = SPECIES.map do |species|
                        [species.capitalize, species]
                      end
  validates :species, presence: true
  validates :nickname, presence: true
  validates :species, inclusion: { in: SPECIES }
  has_one_attached :image
end
