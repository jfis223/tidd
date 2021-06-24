class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def new_notification
    @pet_category = PetCategory.find(params[:pet_category])
    @user = @pet_category.pet.user
    @pet = @pet_category.pet
    @plants = @user.plants
    # @user.pet = @pet
    mail(to: @user.email, subject: 'New reminder set !')
  end

  def reminder_notification
    @pet_category = PetCategory.find(params[:pet_category])
    @user = @pet_category.pet.user
    @pet = @pet_category.pet
    # @user.pet = @pet
    mail(to: @user.email, subject: 'New reminder set !')
  end

  def reminder_plant
    @plant = Plant.find(params[:plant_category])
    @user = @plant.user
    # @user.pet = @pet
    mail(to: @user.email, subject: 'New reminder set !')
  end
end
