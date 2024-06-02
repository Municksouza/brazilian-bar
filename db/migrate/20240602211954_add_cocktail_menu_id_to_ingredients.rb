class AddCocktailMenuIdToIngredients < ActiveRecord::Migration[7.1]
  def change
    add_reference :ingredients, :cocktail_menu, null: false, foreign_key: true
  end
end
