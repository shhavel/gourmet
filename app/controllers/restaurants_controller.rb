class RestaurantsController < ApplicationController
  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.nearby(params[:longitude], params[:latitude]).
      with_some_of_atmosferes(params[:atmosfere_ids]).limit(7)

    render json: { restaurants: @restaurants }
  end
end
