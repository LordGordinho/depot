class AddingTotalPriceToLineItem < ActiveRecord::Migration[6.1]
  def up
    LineItem.all.each do |line_item|
      line_item.update(total_price: (line_item.quantity * line_item.product.price))
    end
  end

  def down
    LineItem.update(total_price: 0)
  end
end
