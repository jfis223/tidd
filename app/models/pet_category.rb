class PetCategory < ApplicationRecord
  belongs_to :pet
  belongs_to :category
  has_many :notifications
  after_create :send_notification

  def send_notification
    notification = NewNotification.with(pet_category: self.id)
    notification.deliver(self.pet.user)
  end

  def self.food_reminder
    reminders = PetCategory.joins(:category).where(categories: { name: 'Food' })
    reminders.each do |reminder|
      notification = ReminderNotification.with(pet_category: reminder.id)
      notification.deliver(reminder.pet.user)
    end
  end

  def self.walk_reminder
    reminders = PetCategory.joins(:category).where(categories: { name: 'Walks' })
    reminders.each do |reminder|
      notification = ReminderNotification.with(pet_category: reminder.id)
      notification.deliver(reminder.pet.user)
    end
  end

  def self.vet_reminder
    reminders = PetCategory.joins(:category).where(categories: { name: 'Vet' })
    reminders.each do |reminder|
      notification = ReminderNotification.with(pet_category: reminder.id)
      notification.deliver(reminder.pet.user)
    end
  end

  def self.bath_reminder
    reminders = PetCategory.joins(:category).where(categories: { name: 'Baths' })
    reminders.each do |reminder|
      notification = ReminderNotification.with(pet_category: reminder.id)
      notification.deliver(reminder.pet.user)
    end
  end
end
