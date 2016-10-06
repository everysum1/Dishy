class CategoriesController < ApplicationController
  def index
    @results = Dish.search(params[:search])
    @categories = Category.all
  end
end
