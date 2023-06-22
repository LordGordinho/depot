class AddTotalPriceToLineItem < ActiveRecord::Migration[6.1]
  def change
    add_column :line_items, :total_price, :float, default: 0
  end
end
