class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:edit, :update, :destroy]
  # def index
  #   if params[:query].present?
  #     @ingredients = Ingredient.all.search_by_multiple(params[:query])
  #   else
  #     @ingredients = Ingredient.all.order(name: :asc)
  #   end
  # end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.name.downcase!
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient.save
    redirect_to recipe_path(@recipe)
  end

  # def edit
  # end

  # def update
  #   @ingredient.update(ingredient_params)
  #   redirect_to ingredient_path(@ingredient)
  # end

  # def destroy
  #   @ingredient.destroy
  # end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
