class PlantsController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update]

  def index
    @plants = Plant.all
  end

  def show
    authorize @plant
  end

  def new
    @plant = Plant.new
    authorize @plant
  end

  def create
    @plant = Plant.new(plant_params)
    @user = current_user
    @plant.user = @user
    authorize @plant
    if @plant.save!
      redirect_to @plant, notice: 'your plant has been added!'
    else
      render :new
    end
    authorize @plant
  end

  def edit
  end

  def update
    @plant.update(plant_params)
    redirect_to plant_path
  end

  def destroy
    @plant.destroy
    redirect_to plants_path
  end

  private

  def set_task
    @plant = Plant.find(params[:id])
    authorize @plant
  end

  def plant_params
    params.require(:plant).permit(:species, :nickname, :location, :image)
  end
end
