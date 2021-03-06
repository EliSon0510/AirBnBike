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

  def edit
    @bike = Bike.find(params[:bike_id])
    @rental = Rental.find(params[:id])
    authorize @rental
     @days = (@rental.end_date - @rental.start_date).to_i
     @total_price = @days * @bike.price
  end

  def update
    @rental = Rental.find(params[:id])
    if @rental.update(rentals_params)
      authorize @rental
      redirect_to dashboard_path
    else
      render :edit
  end
end

  def destroy
    @rental = Rental.find(params[:id])
    authorize @rental
    @rental.destroy
    redirect_to dashboard_path#(anchor: "review-#{@review.id}")
  end

  private

  def rentals_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
