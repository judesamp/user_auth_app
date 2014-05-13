class WelcomeController < ApplicationController
  skip_before_filter :require_no_authentication

  def index
  end
  
end
