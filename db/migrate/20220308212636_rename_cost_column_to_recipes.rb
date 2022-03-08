class RenameCostColumnToRecipes < ActiveRecord::Migration[6.1]
  def change
    rename_column :recipes, :cost, :total_cost
  end
end
