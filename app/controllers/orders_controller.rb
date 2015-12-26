class OrdersController < ApplicationController
  def new
  end

  def create
    order_array = order_params[:order_id].split("\r\n")
    order_array.each { |i|
      Orders.create! :order_id => i, user_id: current_user.id
    }
    redirect_to users_admin_index_path
  end

  private
  def order_params
    params.require(:orders).permit(:order_id)
  end
end
