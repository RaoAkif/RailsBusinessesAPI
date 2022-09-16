class Api::V1::BusinessesController < ApplicationController
  before_action :set_business, only: %i[show edit update destroy]

  def index
    businesses = Business.all
    render json: businesses, status:200
  end

  # GET /businesses/1
  def show
    if @business
      render json: @business, status:200
    else
      render json: {error: "Not Found"}
    end
  end

  # BUSINESS /businesses
  def create
    @business = Business.new(business_params)

    if @business.save
      render json: @car, status: :created
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /businesses/1
  def update
    if @business.update(business_params)
      render json: @business
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  # DELETE /businesses/1
  def destroy
    @business.destroy
    
    render json: Business.all, status: :ok
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_business
    @business = Business.find(params[:id])
  end
  
  # Only allow a list of trusted parameters through.
  def business_params
    params.require(:business).permit(:match_confidence, :is_matched, :name, :addresses, :phone_numbers, :websites, :year_incorporated)
  end
end
