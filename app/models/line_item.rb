class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart, optional: true
  belongs_to :order, optional: true

  before_commit :destroy_line_item, only: [:update]
  after_commit :adding_total_price, only: [:update, :create]
  after_destroy :remove_total_price

  def adding_total_price
    return if destroyed?
    return unless quantity_previously_changed?

    update_column(:total_price, (quantity * product.price))
    cart.adding_total_price
  end

  def remove_total_price
    return unless cart

    cart.adding_total_price
  end

  def destroy_line_item
    return if quantity >= 1

    destroy
  end
end
