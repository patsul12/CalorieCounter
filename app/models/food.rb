class Food < ActiveRecord::Base
  validates :name, :calories, presence: true
  has_many :entries
  has_many :users, through: :entries

  protected

  def self.search(search)
    search = search.upcase
    if search
      where("UPPER(name) LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
