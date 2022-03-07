class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.recipe = @recipe
    if @ingredient.save
      redirect_to new_recipe_ingredient_path(@recipe)
    else
      render :new
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:ingredient_name, :amount_for_recipe,
                                       :amount_of_order, :cost_of_order, :unit_for_recipe,
                                       :unit_of_order)
  end
end
