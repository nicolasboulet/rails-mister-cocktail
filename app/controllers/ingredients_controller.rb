class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new
    @ingredient.update(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  # def show
  # end

  def index
    @ingredients = Ingredient.all
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
