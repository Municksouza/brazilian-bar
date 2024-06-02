class ChangePriceToDecimalInBrazilianBars < ActiveRecord::Migration[7.1]
  def change
      change_column :brazilian_bars, :price, :decimal
  end
end
