class PetCategory < ApplicationRecord
  belongs_to :pet
  belongs_to :category
  has_many :notifications
  after_create :send_notification

  def send_notification
    notification = NewNotification.with(pet_category: self.id)
    notification.deliver(self.pet.user)
  end
end
