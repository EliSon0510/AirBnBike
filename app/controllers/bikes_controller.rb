class BikesController < ApplicationController

  before_action :set_bike, only:[:show, :edit, :destroy, :update]


  def index
    #@bikes = Bike.all
    @bikes = Bike.geocoded

    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bike: bike })

      }
    end

    @bikes = policy_scope(Bike).order(created_at: :desc)
  end

  def top
    @bikes = Bike.limit(10)
    authorize @bikes
  end

  def show
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    authorize @bike
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
    params.require(:bike).permit(:price, :category, :description, :photo, :location)
  end

  def set_bike
    @bike = Bike.find(params[:id])
    authorize @bike
  end

end
