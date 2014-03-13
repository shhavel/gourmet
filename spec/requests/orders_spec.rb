require 'spec_helper'

describe "Orders" do
  describe "GET /orders" do
    let(:valid_attributes) do
      {
        "restaurant_id" => "1",
        "datetime" => "2014-03-13 02:00:12",
        "quantity" => "1",
        "name" => "Alex",
        "email" => "test@example.com"
      }
    end

    describe "with valid params" do
      it "responds with created status" do
        post orders_path, { :order => valid_attributes }
        expect(response.status).to be(201)
      end

      it "responds with json consisting of new order" do
        post orders_path, { :order => valid_attributes }
        expect(json["email"]).to eq("test@example.com")
      end
    end

    describe "with invalid params" do
      it "responds with unprocessable_entity status" do
        post orders_path, { :order => { "restaurant_id" => "invalid value" } }
        expect(response.status).to be(422)
      end

      it "contains error messages" do
        post orders_path, { :order => { "restaurant_id" => "invalid value" } }
        expect(json["phone"]).to eq(["can't be blank"])
      end
    end
  end
end
