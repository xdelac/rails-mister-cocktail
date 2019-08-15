class Dose < ApplicationRecord
  validates :description, presence: true
  belongs_to :ingredient
  belongs_to :cocktail
  validates_uniqueness_of :ingredient_id, scope: :cocktail_id
end
