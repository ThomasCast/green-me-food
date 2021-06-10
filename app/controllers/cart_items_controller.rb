require "pry-byebug"

class CartItemsController < ApplicationController

  def create
    @cart_item = CartItem.new(cart_item_params)
    @product = @cart_item.product
    @cart_item.user = current_user
  
    if @cart_item.save
      respond_to do |format|
        format.html { redirect_to cart_path  }
        format.js { render :create}
      end
    end
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to cart_path
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :buying_frequency, :product_id)
  end
end
