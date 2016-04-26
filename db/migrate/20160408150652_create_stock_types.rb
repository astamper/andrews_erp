class CreateStockTypes < ActiveRecord::Migration
  def change
    create_table :stock_types do |t|
      t.string :name
      t.string :unit
      t.string :category
      t.float :price
      t.boolean :base

      t.references :base_stock_type, references: :stock_type, index: true
      t.timestamps
    end
  end
end
