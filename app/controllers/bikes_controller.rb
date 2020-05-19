class BikesController < ApplicationController

  before_action :set_bike, only:[:show, :edit, :destroy, :update]


  def index
    #@bikes = Bike.all
    @bikes = policy_scope(Bike).order(created_at: :desc)
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
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    authorize @bike
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
