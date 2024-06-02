class AddForeignKeyToBrazilianBars < ActiveRecord::Migration[7.1]
  def change
    add_reference :brazilian_bars, :cocktail_menu, foreign_key: true
  end
end
