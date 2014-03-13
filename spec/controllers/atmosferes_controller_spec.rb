require 'spec_helper'

describe AtmosferesController do
  describe "GET index" do
    let!(:atmosferes) { create_list :atmosfere, 2 }

    it "assigns all atmosferes as @atmosferes" do
      get :index, {}
      expect(assigns(:atmosferes)).to eq(atmosferes)
    end
  end
end
