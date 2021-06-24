# To deliver this notification:
#
# ReminderNotification.with(post: @post).deliver_later(current_user)
# ReminderNotification.with(post: @post).deliver(current_user)

class ReminderNotification < Noticed::Base
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
    "You have a new reminder!"
  end
  #
  def url
    plant = Plant.find(params[:plant])
    plant_path(plant)
  end
end

