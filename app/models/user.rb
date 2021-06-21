class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plants
  has_many :pets
  has_many :pet_categories, through: :pets
  has_many :notifications, as: :recipient
  has_one_attached :avatar
  validates :name, presence: true
end
