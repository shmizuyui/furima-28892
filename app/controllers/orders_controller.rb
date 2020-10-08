class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item

  def index
    @order = AddressOrder.new
  end

  def create
    @order = AddressOrder.new(order_params)
    if @order.valid?
      @order.save
      return redirect_to root_path
    else
      render "index"
    end
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def order_params
   params.permit(:post_code, :prefecture, :city, :block, :building, :phone_number, :user_id, :item_id)
  end

end
