class CreateBrazilianBars < ActiveRecord::Migration[7.1]
  def change
    create_table :brazilian_bars do |t|
      t.string :name
      t.string :price
      t.string :rating
      t.string :description

      t.timestamps
    end
  end
end
