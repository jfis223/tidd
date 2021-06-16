class Pet < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :pet_categories
  has_many :pet_notifications, through: :pet_categories
  
  SPECIES = %w[cat dog]
  SPECIES_FILTER = SPECIES.map do |species|
                        [species.capitalize, species]
                      end
  DOG_BREED = []

  dog_url = 'https://api.thedogapi.com/v1/breeds'
  dog_breeds_string = RestClient.get(dog_url).body
  dog_breeds = JSON.parse(dog_breeds_string)

  dog_breeds.map do |dog|
    DOG_BREED << dog["name"]
  end

  CAT_BREED = []

  cat_url = 'https://api.thecatapi.com/v1/breeds'
  cat_breeds_string = RestClient.get(cat_url).body
  cat_breeds = JSON.parse(cat_breeds_string)

  cat_breeds.map do |cat|
    CAT_BREED << cat["name"]
  end


  validates :name, presence: true
  validates :breed, inclusion: { in: DOG_BREED || CAT_BREED }
  validates :species, inclusion: { in: SPECIES }
  validates :birthdate, presence: true
  has_one_attached :image
end
