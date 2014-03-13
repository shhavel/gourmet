require "spec_helper"

describe RestaurantsController do
  describe "routing" do
    it "routes to #index" do
      expect(get("/restaurants")).to route_to("restaurants#index")
    end
  end
end
