class AddOrderIdToLineItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :line_items, :order, foreign_key: true
    change_column :line_items, :cart_id, :integer, null: true
  end
end
