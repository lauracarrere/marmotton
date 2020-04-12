class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:edit, :update, :destroy]

  # def index
  #   if params[:query].present?
  #     @ingredients = @ingredients.global_search(params[:query])
  #   else
  #     @ingredients = Ingredients.all
  # end

  def index
    if params[:name].present?
      @ingredient = Ingredient.all.find_by(name: params[:name])
      @ingredient.destroy if @ingredient.quantities.empty?
    else
      @ingredients = Ingredient.all.order(name: :asc)
    end
    redirect_to recipes_path
  end

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

  def destroy
    @ingredient.destroy if @ingredient.quantities.empty?
    redirect_to recipes_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
