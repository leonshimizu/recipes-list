class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :ingredients_list, :friendly_cook_time
end
