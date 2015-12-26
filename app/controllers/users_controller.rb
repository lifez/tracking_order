class UsersController < ApplicationController
  def estimate

  end

  def index
    @orders = Orders.where(user_id: current_user)
  end

  def edit_estimate
    estimate_data = user_params
    @user = User.find(current_user)
    if @user.update_attributes(user_params)
      redirect_to users_path
   else
     redirect_to :back
   end
  end

  private
  def user_params
    params.require(:estimate).permit(:start,:end)
  end
end
