class AddTotalPriceToCart < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :total_price, :float, default: 0
  end
end
