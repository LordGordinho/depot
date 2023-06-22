class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  after_commit :adding_total_price
  after_destroy :remove_total_price

  def adding_total_price
    return unless quantity_previously_changed?

    update_column(:total_price, (quantity * product.price))
    cart.adding_total_price
  end

  def remove_total_price
    cart.adding_total_price
  end
end
