class CommentsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.new(comment_params)
    @comment.recipe = @recipe
    if @comment.save
      puts "commentaire sauvé"
      redirect_to recipe_path(@recipe, anchor: "comment-#{@comment.id}")
    else
      render 'recipes/show'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @recipe = @comment.recipe
    puts "nom de la recette: #{@recipe.name}"
    puts "contenu du commentaire:#{@comment.content}"
    @comment.destroy
    puts "commentaire détruit - nom de la recette: #{@recipe.name}"
    redirect_to recipe_path(@recipe)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
