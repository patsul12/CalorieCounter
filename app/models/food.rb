class Food < ActiveRecord::Base
  validates :name, :calories, presence: true
  has_many :entries
  has_many :users, through: :entries
end
