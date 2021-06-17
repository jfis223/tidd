class Plant < ApplicationRecord
  belongs_to :user
  SPECIES_FILTER = []

  url = 'https://raw.githubusercontent.com/dariusk/corpora/master/data/plants/plants.json'
  user_serialized = RestClient.get(url)
  plants = JSON.parse(user_serialized)
  plants["plants"].each do |element|
    SPECIES_FILTER << element["name"]
  end

  validates :species, presence: true
  validates :nickname, presence: true
  validates :species, inclusion: { in: SPECIES_FILTER }
  has_one_attached :image
end
