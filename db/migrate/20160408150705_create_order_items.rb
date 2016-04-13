class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.string :packaging
      t.string :base_stock_type
      t.references :order, index: true
      t.references :stock_type, index: true
      t.string :unit
      t.references :stock, index: true

      t.timestamps
    end
  end
end
