class CartItem < ApplicationRecord
  belongs_to :user
  belongs_to :product
  after_create :set_quantity

  def set_quantity
    self.quantity = 1
    self.buying_frequency = 0
    save
  end

  def calculating_frequency
    if self.buying_frequency == 0
      return 1
    else
      self.buying_frequency
    end
  end

  def display_frequency
    if self.buying_frequency == 0
      return "juste 1 fois"
    else
      "x " + self.buying_frequency.to_s + " / mois"
    end
  end

end
