class Dish < ApplicationRecord
  belongs_to :category
  belongs_to :user

  def self.search(search)
    if search
      Dish.where('title LIKE ?', "%#{search}%")
    end
  end
end
