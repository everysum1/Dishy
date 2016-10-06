class DishesController < ApplicationController
  before_action :set_dishes
  before_action :set_dish, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :edit]

  # GET categories/1/dishes
  def index
    @dishes = @category.dishes
  end

  # GET categories/1/dishes/1
  def show
  end

  # GET categories/1/dishes/new
  def new
    @dish = @category.dishes.new
    @dish.user = current_user
    @dish.save
  end

  # GET categories/1/dishes/1/edit
  def edit
  end

  # POST categories/1/dishes
  def create
    @dish = @category.dishes.build(dish_params)

    if @dish.save
      redirect_to([@dish.category, @dish], notice: 'Dish was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT categories/1/dishes/1
  def update
    if @dish.update_attributes(dish_params)
      redirect_to([@dish.category, @dish], notice: 'Dish was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE categories/1/dishes/1
  def destroy
    @dish.destroy

    redirect_to category_dishes_url(@category)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dishes
      @category = Category.find(params[:category_id])
    end

    def set_dish
      @dish = @category.dishes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dish_params
      params.require(:dish).permit(:title, :user_id, :prep_time, :ingredients, :directions, :category)
    end
end
