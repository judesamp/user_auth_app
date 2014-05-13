module ValidUserRequestHelper
    # Define a method which signs in as a valid user.
  def login_user
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      puts "inside method"
      puts user.inspect
      user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in user
  end

  def current_user
    User.find(session["warden.user.user.key"][0]) if session["warden.user.user.key"][0]
  end
end