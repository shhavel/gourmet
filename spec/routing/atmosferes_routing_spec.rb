require "spec_helper"

describe AtmosferesController do
  describe "routing" do
    it "routes to #index" do
      expect(get("/atmosferes")).to route_to("atmosferes#index")
    end
  end
end
