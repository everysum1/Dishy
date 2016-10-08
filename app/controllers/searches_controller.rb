class SearchesController < ApplicationController
  def show
    @results = Dish.search(params[:search])
    
    @appetizers = []
    @entrees = []
    @salads = []
    @desserts = []

    @results.map do |dish| 
	    if  dish.category.name == "Appetizers" 
	    	@appetizers.push(dish)
	    elsif dish.category.name == "Entrees"
	    	@entrees.push(dish) 
	    elsif dish.category.name == "Salads"
	    	@salads.push(dish)
	    elsif dish.category.name == "Desserts"
	    	@desserts.push(dish)
	    else
	    	return 0
	    end
    end
  end
end
