class BikesController < ApplicationController

  before_action :set_bike, only:[:show, :edit, :destroy, :update]

  def index
    @bikes = Bike.all
  end

  def top
    @bikes = Bike.find(:all, :order => "id desc", :limit => 10).reverse
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.find(bike_params)
    if @bike.save
      redirect_to bikes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @bike.update(bike_params)
  end

  def destroy
    @bike.destroy
  end

  private

  def bike_params
    params.require(:bikes).permit(:price, :category, :description)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end

end
