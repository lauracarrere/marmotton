class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @recipes = Recipe.all.search_by_multiple(params[:query])
    else
      @recipes = Recipe.all.order(name: :asc)
    end
  end

  def show
    @quantity = Quantity.new
    @ingredient = Ingredient.new
    @ingredients = Ingredient.all
  end

  def new
    @recipe = current_user.recipes.new
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe.destroy
    redirect_to dashboard_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :difficulty, :photo, :description, :time)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
