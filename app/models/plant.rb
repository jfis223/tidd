class Plant < ApplicationRecord
  belongs_to :user
  SPECIES_FILTER = []

  plant_file = File.read('./app/assets/plantdb/data.json')
  plants = JSON.parse(plant_file)
  plants["alphabetList"]["glossaryItems"].each do |element|
    SPECIES_FILTER << element["primaryName"]
  end

  validates :species, presence: true
  validates :nickname, presence: true
  validates :species, inclusion: { in: SPECIES_FILTER }
  has_one_attached :image
end
