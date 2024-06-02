class AddDetailsToIngredients < ActiveRecord::Migration[7.1]
  def change
    add_column :ingredients, :name, :string
    add_column :ingredients, :quantity, :string
    add_column :ingredients, :price, :decimal
  end
end
