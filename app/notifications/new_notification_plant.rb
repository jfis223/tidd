# To deliver this notification:
#
# NewNotification.with(post: @post).deliver_later(current_user)
# NewNotification.with(post: @post).deliver(current_user)

class NewNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  # param :post

  # Define helper methods to make rendering easier.
  #
  def message
    "You have a new notification!"
  end
  #
  def url
    plant = Plant.find(params[:pet_category])
    plant_path(plant.pet)
  end
end
