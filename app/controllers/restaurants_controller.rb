class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  def home
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def destroy
    if @restaurant.delete
      redirect_to restaurants_path
    else
      render :show
    end
  end

  def update
    # .update
    if @restaurant.update(set_params_restaurants)
      redirect_to @restaurant
    else
      render :edit
    end
  end

  def edit
  end
  
  def create
    @restaurant = Restaurant.new(set_params_restaurants)
    if @restaurant.save!
      redirect_to @restaurant
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  private

  def set_params_restaurants
    params.require(:restaurant).permit(:name, :phone_number, :speciliaty, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
 
end
