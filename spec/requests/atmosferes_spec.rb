require 'spec_helper'

describe "Atmosferes" do
  describe "GET /atmosferes" do
    let!(:atmosferes) { create_list :atmosfere, 2 }

    it "responds with json consisting of all atmosferes" do
      get atmosferes_path
      expect(response).to be_success
      expect(response.body).to eq({ atmosferes: atmosferes }.to_json) 
    end
  end
end
