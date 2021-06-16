class CartItem < ApplicationRecord
  belongs_to :user
  belongs_to :product
  after_create :set_quantity

  def set_quantity
    self.quantity = 1
    self.buying_frequency = 1
    save
  end

end
