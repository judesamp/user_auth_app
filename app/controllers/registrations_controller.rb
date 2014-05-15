class RegistrationsController < Devise::RegistrationsController
 
  def destroy

  end
 
  # Signs in a user on sign up. You can overwrite this method in your own
  # RegistrationsController.
  def sign_up(resource_name, resource)
    sign_in(resource_name, resource)
  end
 
end