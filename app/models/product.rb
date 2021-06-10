class Product < ApplicationRecord
  belongs_to :category
  belongs_to :producer
  has_many :cart_items

  def is_in_user_cart?(user)
    self.cart_items.any? do |cart_item|
      cart_item.user == user
    end
  end

end
