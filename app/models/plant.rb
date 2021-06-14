class Plant < ApplicationRecord
  belongs_to :user
  validates :species, presence: true
  validates :nickname, presence: true
  has_one :image
end
