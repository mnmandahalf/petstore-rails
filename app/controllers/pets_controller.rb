class PetsController < ApplicationController
  def index
    render json: Pet.all
  end

  def show
    render json: Pet.find(params[:id])
  end

  def create
    pet = Pet.create!(
      name: pet_params[:name],
      tag: pet_params[:tag]
    )
    render json: pet, status: :created
  end

  private

  def pet_params
    params.permit(:name, :tag)
  end
end
