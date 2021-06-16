class CartItemsController < ApplicationController
  skip_forgery_protection only: :update_frequency

  def create
    @cart_item = CartItem.new(cart_item_params)
    @product = @cart_item.product
    @cart_item.user = current_user

    if @cart_item.save
      respond_to do |format|
        format.html { redirect_to cart_path }
        format.js { render :create }
      end
    end
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    respond_to do |f|
      f.html { redirect_to cart_path }
      f.js
    end
    # redirect_to cart_path
  end

  def update_frequency
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(buying_frequency: params[:frequency].to_i)
    render json: {
      newTotal: current_user.total_cart
    }
    # redirect_to cart_path
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
     respond_to do |f|
      f.html { redirect_to cart_path }
      f.js
    end
  end


  def cart
    @cart_items =  current_user.cart_items
    @once_cart_items = @cart_items.where(buying_frequency: 1)
    @weekly_cart_items = @cart_items.where(buying_frequency: 4)
    @biweekly_cart_items = @cart_items.where(buying_frequency: 2)
    @monthly_cart_items = @cart_items.where(buying_frequency: 0)
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :buying_frequency, :product_id)
  end
end
