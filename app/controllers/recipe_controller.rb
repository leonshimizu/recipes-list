class RecipeController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes.as_json
  end

  def create
    recipe = Recipe.new(
      name: params[:name],
      ingredients: params[:ingredients],
      description: params[:description],
      cook_time: params[:cook_time]
    )
    recipe.save
    render json: recipe.as_json
  end
end
