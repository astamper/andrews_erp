class CreateIngredientInstances < ActiveRecord::Migration
  def change
    create_table :ingredient_instances do |t|
      t.decimal :quantity
      t.string :unit
      t.references :stock, index: true
      t.references :stock, index: true

      t.timestamps
    end
  end
end
