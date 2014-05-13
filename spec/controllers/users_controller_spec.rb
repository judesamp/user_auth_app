require 'spec_helper'

describe DeviseController do
  include ValidUserRequestHelper
  include Devise::TestHelpers
  
  it "should create a valid session" do
    login_user
    current_user.should_not be_nil
  end

end