# Create Brazilian Bars
# db/seeds.rb

# Brazilian Bars data
brazilian_bars = [
  { name: 'Bar do Zé', description: 'Cozy bar with live music.', rating: 4.5 },
  { name: 'Carioca Bar', description: 'Popular bar serving traditional Brazilian cocktails.', rating: 4.0 },
  { name: 'Bahia Bar', description: 'Bar specializing in Bahian cuisine and drinks.', rating: 4.2 }
]

# Iterate over the Brazilian bars array
brazilian_bars.each do |bar_attrs|
  # No creation here, just iterating over the attributes
  # You can add logic here if needed, like printing the attributes
  puts "Attributes: #{bar_attrs}"
end


# db/seeds.rb

# Create Cocktail Menus
cocktail_menus = [
  { cocktail_name: 'Caipirinha Menu', price: 12.0},
  { cocktail_name: 'Cachaça Cocktails', price: 10.0},
  { cocktail_name: 'Tropical Drinks', price: 15.0}
]

cocktail_menus.each do |menu_attrs|
  menu = CocktailMenu.create!(menu_attrs)

  # Create Ingredients for each Cocktail Menu
  case menu.cocktail_name
  when 'Caipirinha Menu'
    ingredients = [
      { name: 'Cachaça', quantity: '50ml' },
      { name: 'Lime', quantity: '1' },
      { name: 'Sugar', quantity: '1 tsp' }
    ]
  when 'Cachaça Cocktails'
    ingredients = [
      { name: 'Cachaça', quantity: '50ml' },
      { name: 'Guava', quantity: '50g' },
      { name: 'Sugar', quantity: '1 tsp' }
    ]
  when 'Tropical Drinks'
    ingredients = [
      { name: 'Cachaça', quantity: '50ml' },
      { name: 'Coconut Milk', quantity: '100ml' },
      { name: 'Sugar', quantity: '1 tsp' }
    ]
  end
  ingredients.each do |ingredient_attrs|
    menu.ingredients.build(ingredient_attrs)
  end
end
