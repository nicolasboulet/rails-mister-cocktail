Ingredient.delete_all

require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

buffer = open(url).read

result = JSON.parse(buffer)

result['drinks'].each do |drink|
  Ingredient.create(name: "#{drink['strIngredient1']}")
end
