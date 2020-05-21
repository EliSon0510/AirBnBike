class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    current_date = Time.now
    rentals = Rental.where(user: current_user)
    binding.pry
    rentals.select { |rental| rental.end_date < Time.now }
  end
end
