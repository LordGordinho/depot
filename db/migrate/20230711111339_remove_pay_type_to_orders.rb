class RemovePayTypeToOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :pay_type, :integer
    add_reference :orders, :pay_type, foreign_key: true
  end
end
