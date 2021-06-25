require 'date'
namespace :plant do
  desc "Send water reminders"
  task water_reminder: :environment do
    reminders = Plant.all
    reminders.each do |reminder|
      notification = PlantNotification.with(plant: reminder.id)
      notification.deliver(reminder.user)
    end
  end
end
