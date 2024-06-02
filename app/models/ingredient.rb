class Ingredient < ApplicationRecord
  belongs_to :cocktail_menu
  validates :name, presence: true
  validates :quantity, presence: true

end
