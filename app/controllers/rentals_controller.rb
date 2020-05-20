class RentalsController < ApplicationController

  def new
    @bike = Bike.find(params[:bike_id])
    @rental = Rental.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @rental = Rental.new(rentals_params)
    @rental.bike = @bike
    if @rental.save
      redirect_to top_bikes_path
    else
      render :new
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to bike_path(@rental.bike)
  end

  private

  def rentals_params
    params.require(:rental).permit(:price, :category)
  end
end
