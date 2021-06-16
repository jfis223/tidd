class PetCategory < ApplicationRecord
  belongs_to :pet
  belongs_to :category
  has_many :pet_notifications
end
