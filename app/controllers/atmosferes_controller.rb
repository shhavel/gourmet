class AtmosferesController < ApplicationController
  # GET /atmosferes
  # GET /atmosferes.json
  def index
    @atmosferes = Atmosfere.all

    render json: { atmosferes: @atmosferes }
  end
end
