class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.split(", ")
  end

  def friendly_cook_time
    hours = cook_time / 60
    minutes = cook_time % 60
    if minutes == 0
      return "It should take roughly #{hours} hours to make."
    else 
      return "It should take roughly #{hours} hours and #{minutes} minutes to make."
    end
  end
end
