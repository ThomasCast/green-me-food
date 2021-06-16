class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cart_items

  def total_cart
    cart_items.reduce(0) do |sum, cart_item|
      ((sum + (cart_item.quantity * cart_item.product.price * cart_item.buying_frequency)) / 1.00).round(2)
    end
  end

end
