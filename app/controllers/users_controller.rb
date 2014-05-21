class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      respond_to do |format|
        format.js {render plain: "1"}
        format.html { redirect_to users_path }
      end
    else
      respond_to do |format|
        format.js {render plain: "0"}
        format.html { redirect_to users_path, notice: "Delete failed"}
      end
    end
  end

  def update_status
    @user = User.find(params[:id])
    if @user.update(user_params)
      respond_to do |format|
        format.js {render plain: '1'}
        format.html {redirect_to users_path, notice: "Status updated"}
      end
    else
      respond_to do |format|
        format.js {render plain: '1'}
        format.html {redirect_to users_path, notice: "Status update failed."}
      end
    end
  end

  private

  def user_params
    params.require(:users).permit(:status)
  end

end