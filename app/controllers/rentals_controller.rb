class RentalsController < ApplicationController

  def new
    @bike = Bike.find(params[:bike_id])
    @rental = Rental.new
    authorize @rental
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @rental = Rental.new(rentals_params)
    @rental.bike = @bike
    @rental.user = current_user
    authorize @rental
    if @rental.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    authorize @rental
    @rental.destroy
    redirect_to bike_path(@rental.bike)
  end

  private

  def rentals_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
