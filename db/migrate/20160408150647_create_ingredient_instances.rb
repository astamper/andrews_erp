class CreateIngredientInstances < ActiveRecord::Migration
  def change
    create_table :ingredient_instances do |t|
      t.decimal :quantity
      t.references :stock, index: true
      t.references :stock_component, references: :stock, index: true

      t.timestamps
    end
  end
end
