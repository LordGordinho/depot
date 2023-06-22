class AddingTotalPriceToCart < ActiveRecord::Migration[6.1]
  def up
    Cart.all.each do |cart|
      cart.update(total_price: cart.line_items.sum(&:total_price))
    end
  end

  def down
    Cart.update(total_price: 0)
  end
end
