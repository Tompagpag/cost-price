class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.float :amount_for_recipe
      t.float :cost_for_recipe
      t.float :amount_of_order
      t.float :cost_of_order
      t.string :unit_for_recipe
      t.string :unit_of_order
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
