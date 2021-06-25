class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def new_notification
    if params[:pet_category]
      @pet_category = PetCategory.find(params[:pet_category])
      @user = @pet_category.pet.user
      @pet = @pet_category.pet
      @pets = []
      @pets << @pet
      @plants = @user.plants
    else
      @plant = Plant.find(params[:plant])
      @user = @plant.user
      @plants = @user.plants
      @pets = @user.pets
    end
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

  def plant_notification
    @plant = Plant.find(params[:plant])
    @user = @plant.user
    @plants = @user.plants
    # @user.pet = @pet
    mail(to: @user.email, subject: 'New reminder set !')
  end
end
