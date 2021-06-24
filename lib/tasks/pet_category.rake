require 'date'
namespace :pet_category do
  desc "Send food reminders"
  task food_reminder: :environment do
    reminders = PetCategory.joins(:category).where(categories: { name: 'Food' })
    reminders.each do |reminder|
      notification = ReminderNotification.with(pet_category: reminder.id)
      notification.deliver(reminder.pet.user)
    end
  end
end

namespace :pet_category do
  desc "Send walk reminders"
  task walk_reminder: :environment do
    reminders = PetCategory.joins(:category).where(categories: { name: 'Walk' })
    reminders.each do |reminder|
      notification = ReminderNotification.with(pet_category: reminder.id)
      notification.deliver(reminder.pet.user)
    end
  end
end

namespace :pet_category do
  desc "Send vet reminders"
  task vet_reminder: :environment do
    if Date.today.mday == 15
      reminders = PetCategory.joins(:category).where(categories: { name: 'Vet' })
      reminders.each do |reminder|
        notification = ReminderNotification.with(pet_category: reminder.id)
        notification.deliver(reminder.pet.user)
      end
    end
  end
end

namespace :pet_category do
  desc "Send bath reminders"
  task bath_reminder: :environment do
    if Date.today.mday == 1
      reminders = PetCategory.joins(:category).where(categories: { name: 'Bath' })
      reminders.each do |reminder|
        notification = ReminderNotification.with(pet_category: reminder.id)
        notification.deliver(reminder.pet.user)
      end
    end
  end
end
