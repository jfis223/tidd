class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @pets = Pet.where(user: @user)
    @plants = Plant.where(user: @user)
    @notifications = current_user.notifications
  end
end
