class Recipe < ApplicationRecord
  belongs_to :user

  has_many :ingredients, dependent: :destroy
  validates :name, presence: true

  def set_total_cost
    update(total_cost: ingredients.map(&:cost_for_recipe).sum)
  end
end
