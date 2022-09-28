class PlantsController < ApplicationController

  def index
    plants = Plant.all
    render json: plants, status: :ok
  end

  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant, status: :ok
  end

  def create
    plant = Plant.create(list_params)
    render json: plant, status: :created
  end

  private
  
  def list_params
    params.permit(:name, :image, :price)
  end
end
