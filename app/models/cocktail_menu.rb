class CocktailMenu < ApplicationRecord
  has_many :brazilian_bar
  has_many :ingredients,  dependent: :destroy
  accepts_nested_attributes_for :ingredients

  validates :cocktail_name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates_associated :ingredients

end
