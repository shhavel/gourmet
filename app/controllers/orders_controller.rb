class OrdersController < ApplicationController
  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

private
  def order_params
    params.require(:order).permit(:restaurant_id, :datetime, :quantity, :name, :phone, :email)
  end
end
