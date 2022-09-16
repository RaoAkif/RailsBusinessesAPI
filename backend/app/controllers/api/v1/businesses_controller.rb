class Api::V1::BusinessesController < ApplicationController
  def index
    businesses = Business.all
    render json: businesses, status:200
  end

  def show
    business = Business.find_by(id: params[:id])
    if business
      render json: business, status:200
    else
      render json: {error: "Not Found"}
    end
  end
end
