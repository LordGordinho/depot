class CreatePayTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :pay_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def up
    PayType.create(name: 'Check')
    PayType.create(name: 'Credit Card')
    PayType.create(name: 'Purchase order')
  end

  def down
    PayType.destroy_all
  end
end
