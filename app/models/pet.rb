class Pet < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :pet_categories
  has_many :pet_notifications, through: :pet_categories
  TYPE = %w[cat dog]
  TYPE_FILTER = TYPE.map do |type|
                        [type.capitalize, type]
                      end
  validates :name, presence: true
  validates :breed, presence: true
  validates :type, inclusion: { in: TYPE }
  validates :birthdate, presence: true
  has_one_attached :image
end
