class QuantitiesController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @quantity = @recipe.quantities.new(quantity_params)
    @quantity.recipe = @recipe
    puts "recette : #{@recipe}"
    puts "params[:quantity] : #{params[:quantity]}"
    @quantity.ingredient = Ingredient.find_by(name: params[:quantity][:ingredient_id])

    if @quantity.save
      respond_to do |format|
        format.html { redirect_to recipe_path(@recipe) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'recipes/show' }
        format.js
      end
    end
  end

  def destroy
    @quantity = Quantity.find(params[:id])
    @recipe = @quantity.recipe
    @quantity.destroy
    respond_to do |format|
      format.html { redirect_to recipe_path(@recipe) }
      format.js # render destroy.js.erb
    end
  end

  private

  def quantity_params
    params.require(:quantity).permit(:description, :ingredient, :recipe)
  end
end
