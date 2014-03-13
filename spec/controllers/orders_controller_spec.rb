require 'spec_helper'

describe OrdersController do

  # This should return the minimal set of attributes required to create a valid
  # Order. As you add validations to Order, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    {
      "restaurant_id" => "1",
      "datetime" => "2014-03-13 02:00:12",
      "quantity" => "1",
      "name" => "Alex",
      "email" => "test@example.com"
    }
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Order" do
        expect {
          post :create, {:order => valid_attributes}
        }.to change(Order, :count).by(1)
      end

      it "assigns a newly created order as @order" do
        post :create, {:order => valid_attributes}
        expect(assigns(:order)).to be_an(Order)
        expect(assigns(:order)).to be_persisted
      end

      it "redirects to the created order" do
        post :create, {:order => valid_attributes}
        expect(response.status).to eq 201 
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved order as @order" do
        # Trigger the behavior that occurs when invalid params are submitted
        Order.any_instance.stub(:save).and_return(false)
        post :create, {:order => { "restaurant_id" => "invalid value" }}
        expect(assigns(:order)).to be_a_new(Order)
      end
    end
  end
end
