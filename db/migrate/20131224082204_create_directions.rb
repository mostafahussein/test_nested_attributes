class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.text :step
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
