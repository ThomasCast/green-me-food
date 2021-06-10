class CartItemsController < ApplicationController

  def create
    @cart_item = Cart_item.new(cart_item_params)
    @product = Product.find(params[:product_id])
    @cart_item.product = @product
    @cart_item.save
    redirect_to cart_path
  end

  def update
    @cart_item = Cart_item.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to cart_path
  end

  def destroy
    @cart_item = Cart_item.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :buying_frequency, :user_id, :product_id)
  end
end
