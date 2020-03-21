class QuantitiesController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @quantity = @recipe.quantities.new(quantity_params)
    @quantity.recipe = @recipe
    @quantity.ingredient = Ingredient.find(params[:quantity][:ingredient_id])
    if @quantity.save
      respond_to do |format|
        format.html { redirect_to recipe_path(@recipe) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :'recipes/show' }
        format.js
      end
    end
  end

  private

  def quantity_params
    params.require(:quantity).permit(:description, :ingredient, :recipe)
  end


end
