class PetCategoriesController < ApplicationController
  def index

   @pet_categories = policy_scope(PetCategory).order(created_at: :desc)
  end

  def show
  end

  def new
    @pet_category = PetCategory.new
    @pet = Pet.find(params[:pet_id])
    authorize @pet_category

  end

  def create
    @pet = Pet.find(params[:pet_id])
    params["pet_category"]["category_id"].each do |category_id|
      @pet_category = PetCategory.new(pet:@pet)
      category = Category.find(category_id)
      @pet_category.category = category
      authorize @pet_category
      @pet_category.save
    end

    if @pet_category.save
      redirect_to @pet
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
    params.require(:pet_category).permit(:category_id)

  end

end
