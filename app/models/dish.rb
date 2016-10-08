class Dish < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :votes


  def self.search(search)
    if search
      Dish.where('ingredients ILIKE ? OR title ILIKE ?', "%#{search}%", "%#{search}%")
    end
  end
end
