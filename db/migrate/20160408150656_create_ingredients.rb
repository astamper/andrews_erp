class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.decimal :quantity
      t.references :stock_type, index: true
      t.references :stock_type_component, references: :stock_type, index: true
      t.timestamps
    end
  end
end
