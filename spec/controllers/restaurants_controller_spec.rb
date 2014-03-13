require 'spec_helper'

describe RestaurantsController do
  let!(:nearby_restaurants) { create_list :restaurant, 7, longitude: 10.0, latitude: 10.0, atmosfere_ids: [1,4] }
  let!(:faraway_restaurants) { create_list :restaurant, 10, longitude: 11.0, latitude: 12.0, atmosfere_ids: [1,4] }
  let!(:filtered_restaurants) { create_list :restaurant, 5, longitude: 10.0, latitude: 10.0, atmosfere_ids: [2,3] }

  describe "GET index" do
    it "assigns nearby restaurants as @restaurants" do
      get :index, { longitude: '9.99', latitude: '9.99' }
      expect(assigns(:restaurants)).to eq(nearby_restaurants)
    end

    it "assigns filtered by atmosferes nearby restaurants as @restaurants" do
      get :index, { longitude: '9.99', latitude: '9.99', atmosfere_ids: %w(2 5) }
      expect(assigns(:restaurants)).to eq(filtered_restaurants)
    end
  end
end
