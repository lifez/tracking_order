class TrackingsController < ApplicationController
  def show
    @order = Orders.find_by(order_id: params[:q])
  end
end
