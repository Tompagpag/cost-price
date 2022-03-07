class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :ingredient_name, :amount_for_recipe, :unit_for_recipe,
            :amount_of_order, :cost_of_order, :unit_of_order, presence: true
end
