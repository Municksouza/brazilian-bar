class CreateCocktailMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :cocktail_menus do |t|
      t.string :cocktail_name
      t.decimal :price
      t.string :ingredients

      t.timestamps
    end
  end
end
