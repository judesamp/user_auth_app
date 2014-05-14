class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @current_user = current_user
    puts @current_user.email
  end
end
