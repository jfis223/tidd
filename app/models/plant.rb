class Plant < ApplicationRecord
  belongs_to :user
  after_create :send_notification

  def send_notification
    notification = NewNotificationPlant.with(plant: self.id)
    notification.deliver(self.plant.user)
  end

  SPECIES_FILTER = []

  plant_file = File.read('./app/assets/plantdb/data.json')
  plants = JSON.parse(plant_file)
  plants["alphabetList"]["glossaryItems"].each do |element|
    SPECIES_FILTER << element["primaryName"]
  end

  def self.water_reminder
    reminders = Plant.all
    reminders.each do |reminder|
      notification = ReminderNotification.with(plant: reminder.id)
      notification.deliver(reminder.plant.user)
    end
  end

  validates :species, presence: true
  validates :nickname, presence: true
  validates :species, inclusion: { in: SPECIES_FILTER }
  has_one_attached :image
end
