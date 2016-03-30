class Entry < ActiveRecord::Base
  belongs_to :food
  belongs_to :user
  validates :amount, presence: true

  def total_calories
    calories_per_serving = food.calories
    servings = amount
    calories_per_serving * servings
  end
end
