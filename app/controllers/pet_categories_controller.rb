class PetCategoriesController < ApplicationController
  def index

  end

  def show
  end

  def new
    @pet_category = PetCategory.new
    @pet = Pet.find(params[:pet_id])
    authorize @pet_category

  end

  def create
    @pet_category = PetCategory.new(pet_category_params)

    @pet = Pet.find(params[:pet_id])
    @pet_category.pet = @pet
    authorize @pet_category

    if @pet_category.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def pet_category_params
    params.require(:pet_category).permit(:pet_id, :category_id)

  end

end
