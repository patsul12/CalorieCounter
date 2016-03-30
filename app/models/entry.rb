class Entry < ActiveRecord::Base
  belongs_to :food
  belongs_to :user
  validates :amount, presence: true
end
