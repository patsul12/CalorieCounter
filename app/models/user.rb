class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :entries
  has_many :foods, through: :entries

  def entries_from_today
    entries.where('created_at >= ?', Time.zone.now.beginning_of_day)
  end

  def calories_eaten_today
    total_calories = 0
    entries_from_today.each do |entry|
      total_calories += entry.total_calories
    end
    total_calories
  end
end
