class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new
    @dose.update(dose_params)

    if @dose.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
