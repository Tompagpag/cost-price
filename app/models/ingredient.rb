class Ingredient < ApplicationRecord
  belongs_to :recipe
  before_create :set_cost_for_recipe

  validates :ingredient_name, :amount_for_recipe, :unit_for_recipe,
            :amount_of_order, :cost_of_order, :unit_of_order, presence: true

  UNITS = ["Gramme", "Kilogramme", "Centilitre", "Litre"]

  def set_cost_for_recipe
    if unit_for_recipe == unit_of_order
      self.cost_for_recipe = cost_of_order.fdiv(amount_of_order) * amount_for_recipe
    else
      self.cost_for_recipe = cost_of_order.fdiv((amount_of_order * 1000)) * amount_for_recipe
    end
  end
end
