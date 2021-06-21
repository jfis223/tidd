class PetsController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
    authorize @pet
    if @pet.species == "dog"
      response = JSON.parse(RestClient.get(dog_url(@pet.breed)))
      @description = response[0]["temperament"]
    else
      response = JSON.parse(RestClient.get(cat_url(@pet.breed)))
      @description = response[0]["description"]
    end
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    authorize @pet
    @pet.user = current_user

    if @pet.save

      redirect_to new_pet_pet_category_path(@pet)
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
    params.require(:pet).permit(:name, :breed, :weight, :birthdate, :location, :species, :image)
  end

  def dog_url(id)
    "https://api.thedogapi.com/v1/breeds/search?q=#{id}"
  end

  def cat_url(id)
    "https://api.thecatapi.com/v1/breeds/search?q=#{id}"
  end
end
