class IngredientsController < ApplicationController
  before_action :set_ingredient_recipe, only: [:new, :create]

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.recipe = @recipe
    if @ingredient.save && new_ingredient?
      @ingredient.set_cost_for_recipe
      redirect_to new_recipe_ingredient_path(@recipe)
    elsif @ingredient.save && recipe_finished?
      @ingredient.set_cost_for_recipe
      @recipe.set_total_cost
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def new_ingredient?
    params[:commit] == "Ingrédient suivant >"
  end

  def recipe_finished?
    params[:commit] == "Terminer la recette"
  end

  def set_ingredient_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:ingredient_name, :amount_for_recipe,
                                       :amount_of_order, :cost_of_order, :unit_for_recipe,
                                       :unit_of_order)
  end
end
