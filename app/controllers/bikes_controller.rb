class BikesController < ApplicationController

  before_action :set_bike, only:[:show, :edit, :destroy, :update]


  def index
    #@bikes = Bike.all
    @bikes = policy_scope(Bike).order(created_at: :desc)
  end

  def top
    @bikes = Bike.limit(10)
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to bikes_path
    else
      render :new
    end
    authorize @bike
  end

  def edit
  end

  def update
    @bike.update(bike_params)
    if @bike.save
      redirect_to bikes_path
    else
      render :edit
    end
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  private

  def bike_params
    params.require(:bike).permit(:price, :category, :description, :photo)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end

end
