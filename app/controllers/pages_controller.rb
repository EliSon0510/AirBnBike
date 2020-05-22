class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    current_date = Time.now
    rentals = Rental.where(user: current_user)
    @past_rentals = rentals.select { |rental| rental.end_date < Date.today }
    @future_rentals = rentals.select { |rental| rental.start_date >= Date.today }
  end
end
