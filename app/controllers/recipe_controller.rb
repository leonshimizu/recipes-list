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

  def show
    recipe = Recipe.find_by(id: params[:id])
    render json: recipe.as_json
  end

  def update
    recipe = Recipe.find_by(id: params[:id])
    recipe.name = params[:name] || recipe.name
    recipe.ingredients = params[:ingredients] || recipe.ingredients
    recipe.description = params[:description] || recipe.description
    recipe.cook_time = params[:cook_time] || recipe.cook_time
    recipe.save
    render json: recipe.as_json
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    message = "You've successfully deleted the recipe."
    render json: message.as_json
  end
end
