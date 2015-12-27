class TrackingsController < ApplicationController
  def show
    if params[:q]
      order_id = process_order_id(params[:q])
      @order = Orders.find_by(order_id: order_id)
    end
  end

  private

  def process_order_id(order_id)
    unless order_id.include? "#"
      order_id = "#" + order_id
    end
      order_id
  end
end
