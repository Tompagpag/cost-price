class IngredientsController < ApplicationController
  before_action :set_ingredient_recipe, only: [:new, :create]
  before_action :set_ingredient, only: [:create]

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient.recipe = @recipe

    if @ingredient.set_cost_for_recipe && @ingredient.save && new_ingredient?
      redirect_to new_recipe_ingredient_path(@recipe)
    elsif @ingredient.set_cost_for_recipe && @ingredient.save && recipe_finished?
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

  def set_ingredient
    @ingredient = Ingredient.new(ingredient_params)
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
