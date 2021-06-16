class PetsController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    authorize @pet
    if @pet.save
      redirect_to @pet
    else
      render :new
    end
  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path
  end

  def edit
  end

  def destroy
  end

  private

  def set_task
    @pet = Pet.find(params[:id])
    authorize @pet
  end

  def pet_params
    params.require(:pet).permit(:name, :breed, :weight, :birthdate, :location)
  end
end
