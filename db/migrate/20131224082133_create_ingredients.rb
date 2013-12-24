class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.float :quantity
      t.string :measure
      t.string :name
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
