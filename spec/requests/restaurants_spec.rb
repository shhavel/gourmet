require 'spec_helper'

describe "Restaurants" do
  let!(:restaurants) { create_list :restaurant, 2 }

  describe "GET /restaurants" do
    it "responds with json consisting of nearby restaurants" do
      get restaurants_path, { longitude: '9.99', latitude: '9.99' }
      expect(response).to be_success
      expect(response.body).to eq({ restaurants: restaurants }.to_json)
    end
  end
end
