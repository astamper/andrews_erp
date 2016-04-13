class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.decimal :quantity
      t.references :base_unit, references: :unit, index: true

      t.timestamps
    end
  end
end
